import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/chat/chat_bloc.dart';
import '../../../../domain/model/stream_message.dart';
import 'code_block.dart';

class MessageItem extends StatelessWidget {
  final bool isLast;
  final bool isMine;
  final Message current;

  const MessageItem(
      {super.key,
      required this.isLast,
      required this.isMine,
      required this.current});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            children: [
              if (current.images?.isNotEmpty ?? false)
                Container(
                  height: 200,
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  child: ListView.separated(
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: current.images?.length ?? 0,
                    itemBuilder: (context, index) {
                      final currentImage = current.images?[index];
                      return AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: MemoryImage(currentImage!),
                                fit: BoxFit.cover),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 4,
                      );
                    },
                  ),
                ),
              Row(
                mainAxisAlignment:
                    isMine ? MainAxisAlignment.end : MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Container(
                      constraints: isMine
                          ? BoxConstraints(
                              maxWidth: MediaQuery.sizeOf(context).width * 0.36)
                          : null,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: isMine
                            ? const Color.fromRGBO(77, 77, 77, 1)
                            : Colors.transparent,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      child: Builder(builder: (context) {
                        String text = (current.content ?? "").trim();
                        final List<Widget> children = [];
                        final List<String> lines = text.trim().split('\n');

                        bool inCodeBlock = false;
                        String codeBlock = '';
                        String language = 'Unknown';

                        for (var line in lines) {
                          // Check for start of a code block
                          if (line.startsWith('```')) {
                            if (inCodeBlock) {
                              // End of a code block
                              children.add(CodeBlock(
                                  code: codeBlock, language: language));
                              codeBlock = '';
                              inCodeBlock = false;
                              language = 'Unknown';
                            } else {
                              // Start of a code block
                              inCodeBlock = true;
                              final languageMatch =
                                  RegExp(r'```(\w+)').firstMatch(line);
                              if (languageMatch != null) {
                                print('languageMatch: ${languageMatch.input}');
                                language = languageMatch.group(1) ?? 'Unknown';
                              }
                            }
                          } else if (inCodeBlock) {
                            // Collect lines for the code block
                            codeBlock += '$line\n';
                          } else {
                            if (line.startsWith('### ')) {
                              children.add(Text(
                                line.substring(4), // Remove the '### ' part
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ));
                            } else if (line.startsWith('# ')) {
                              children.add(Text(
                                line.substring(4), // Remove the '### ' part
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ));
                            } else if (line.startsWith('## ')) {
                              children.add(Text(
                                line.substring(4),
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ));
                            } else if (line.startsWith('#### ')) {
                              children.add(Text(
                                line.substring(4),
                                style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ));
                            } else {
                              final RegExp boldPattern =
                                  RegExp(r'\*\*(.*?)\*\*');
                              final List<TextSpan> spans = [];
                              int lastMatchEnd = 0;

                              for (final match
                                  in boldPattern.allMatches(line)) {
                                if (match.start > lastMatchEnd) {
                                  spans.add(
                                    TextSpan(
                                      text: line.substring(
                                          lastMatchEnd, match.start),
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  );
                                }
                                spans.add(TextSpan(
                                  text: match.group(1),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ));
                                lastMatchEnd = match.end;
                              }

                              if (lastMatchEnd < line.length) {
                                spans.add(TextSpan(
                                  text: line.substring(lastMatchEnd),
                                  style: const TextStyle(color: Colors.white),
                                ));
                              }

                              children.add(Text.rich(
                                TextSpan(children: spans),
                                style: const TextStyle(color: Colors.white),
                              ));
                            }
                          }
                        }

                        if (inCodeBlock) {
                          children.add(
                              CodeBlock(code: codeBlock, language: language));
                        }

                        return SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: children,
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        BlocBuilder<ChatBloc, ChatState>(
          builder: (context, state) {
            if (isLast && state.lastMessage == null && state.isLoading) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 12, top: 16),
                    height: 15,
                    width: 15,
                    child: const FittedBox(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 1.5,
                      ),
                    ),
                  ),
                ],
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
