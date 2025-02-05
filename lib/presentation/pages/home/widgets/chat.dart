import 'dart:convert';

import 'package:elbek_ai/presentation/pages/home/widgets/message_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_auth/local_auth.dart';
import 'package:system_info2/system_info2.dart';

import '../../../../application/chat/chat_bloc.dart';
import '../../../../domain/model/stream_message.dart';
import '../../../../domain/service/helper.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  late TextEditingController messageCon;

  @override
  void initState() {
    messageCon = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(50, 50, 50, 1),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: BlocBuilder<ChatBloc, ChatState>(
                builder: (_, state) {
                  final length = state.messages.length +
                      (state.lastMessage == null ? 0 : 1);
                  return Container(
                    constraints: BoxConstraints(
                        maxWidth: AppHelper.screenSize(context).width * 0.6),
                    child: ListView.builder(
                      itemCount: length,
                      itemBuilder: (context, index) {
                        final current = [
                          ...state.messages,
                          if (state.lastMessage != null)
                            state.lastMessage!.message!
                        ][index];
                        final isLast = length == index + 1;
                        final isMine = current.role == 'user';
                        return MessageItem(
                            isLast: isLast, isMine: isMine, current: current);
                      },
                    ),
                  );
                },
              ),
            ),
            BlocBuilder<ChatBloc, ChatState>(
              builder: (context, state) {
                return Container(
                  constraints: BoxConstraints(
                      maxWidth: AppHelper.screenSize(context).width * 0.6),
                  width: double.infinity,
                  height: 95 + (state.images.isEmpty ? 0 : 140),
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromRGBO(70, 70, 70, 1), width: 1),
                    color: const Color.fromRGBO(60, 60, 60, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                  child: Column(
                    children: [
                      if (state.images.isNotEmpty)
                        Container(
                          height: 130,
                          margin: const EdgeInsets.only(bottom: 8, top: 4),
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: state.images.length,
                            itemBuilder: (context, index) {
                              final current = state.images[index];
                              return AspectRatio(
                                aspectRatio: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: MemoryImage(current),
                                        fit: BoxFit.cover),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 4, right: 4),
                                        height: 20,
                                        width: 20,
                                        child: FittedBox(
                                          child: IconButton(
                                            style: ButtonStyle(
                                              side: WidgetStateProperty.all(
                                                BorderSide(
                                                    color: Colors.white
                                                        .withOpacity(.6),
                                                    width: 1),
                                              ),
                                              backgroundColor:
                                                  WidgetStateProperty.all(
                                                Colors.grey.withOpacity(.8),
                                              ),
                                            ),
                                            onPressed: () {
                                              context.read<ChatBloc>().add(
                                                  ChatEvent.removeImage(
                                                      current));
                                            },
                                            icon: Icon(
                                              Icons.close,
                                              color:
                                                  Colors.white.withOpacity(.6),
                                              size: 60,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const SizedBox(
                                width: 8,
                              );
                            },
                          ),
                        ),
                      Flexible(
                        child: TextFormField(
                          textInputAction: TextInputAction.done,
                          autofocus: true,
                          onFieldSubmitted: (value) {
                            sendMessage(state, context);
                          },
                          controller: messageCon,
                          maxLines: 10,
                          minLines: 1,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 15),
                          decoration: const InputDecoration(
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(158, 158, 158, 1),
                              fontSize: 15,
                            ),
                            hintText: 'Message Elbek AI',
                            disabledBorder: InputBorder.none,
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 32,
                            width: 32,
                            child: FittedBox(
                              child: BlocBuilder<ChatBloc, ChatState>(
                                builder: (context, state) {
                                  return IconButton(
                                    style: ButtonStyle(
                                        shape: WidgetStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10)))),
                                    hoverColor:
                                        const Color.fromRGBO(80, 80, 80, 1),
                                    icon: const Icon(
                                      Icons.add,
                                      size: 30,
                                      color: Color.fromRGBO(203, 203, 202, 1),
                                    ),
                                    onPressed: () {
                                      context
                                          .read<ChatBloc>()
                                          .add(const ChatEvent.pickImages());
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 32,
                            width: 32,
                            child: FittedBox(
                              child: BlocBuilder<ChatBloc, ChatState>(
                                builder: (context, state) {
                                  return IconButton(
                                    hoverColor: Colors.grey.shade200,
                                    onPressed: () async {
                                      // sendMessage(state, context);
                                    },
                                    style: ButtonStyle(
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                                Colors.white)),
                                    icon: state.isLoading
                                        ? const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: FittedBox(
                                              child: CircularProgressIndicator(
                                                color: Colors.black,
                                              ),
                                            ),
                                          )
                                        : const Icon(
                                            Icons.arrow_upward,
                                            size: 30,
                                          ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void sendMessage(ChatState state, BuildContext context) {
    if (messageCon.text.trim().isNotEmpty && !state.isLoading) {
      final tempText = messageCon.text;
      messageCon.clear();
      context.read<ChatBloc>().add(
            ChatEvent.sendMessage(
              tempText,
              onSuccess: (stream) {
                stream.listen(
                  (event) {
                    final messageRawJson = utf8.decode(event);
                    print(messageRawJson);
                    final message = StreamMessage.fromRawJson(messageRawJson);

                    context
                        .read<ChatBloc>()
                        .add(ChatEvent.appendMessage(message));
                  },
                );
              },
            ),
          );
    }
  }
}
