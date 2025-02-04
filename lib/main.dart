import 'dart:convert';

import 'package:elbek_ai/domain/di/dependency_manager.dart';
import 'package:elbek_ai/domain/model/stream_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'application/chat/chat_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setUpDependencies();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TextEditingController messageCon;

  @override
  void initState() {
    messageCon = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize =
        WidgetsBinding.instance.platformDispatcher.views.first.display.size /
            MediaQuery.devicePixelRatioOf(context);
    print(deviceSize);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => ChatBloc(),
        child: Scaffold(
          body: Row(
            children: [
              Container(
                width: deviceSize.width * .12,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(47, 46, 46, 1),
                  border: Border(
                    right: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 32,
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 18),
                          prefixIcon: Icon(
                            CupertinoIcons.search,
                            size: 18,
                            color: Colors.grey.withOpacity(.4),
                          ),
                          hintText: "Search",
                          fillColor: const Color.fromRGBO(51, 50, 50, 1),
                          filled: true,
                          hintStyle: TextStyle(
                              color: Colors.grey.withOpacity(.4), fontSize: 13),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(57, 56, 56, 1), width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(57, 56, 56, 1), width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(57, 56, 56, 1), width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(57, 56, 56, 1), width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
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
                                  maxWidth: deviceSize.width * 0.6),
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
                                  return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8),
                                        child: Column(
                                          children: [
                                            if (current.images?.isNotEmpty ??
                                                false)
                                              Container(
                                                height: 200,
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 6),
                                                child: ListView.separated(
                                                  reverse: true,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount:
                                                      current.images?.length ??
                                                          0,
                                                  itemBuilder:
                                                      (context, index) {
                                                    final currentImage =
                                                        current.images?[index];
                                                    return AspectRatio(
                                                      aspectRatio: 1,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          image: DecorationImage(
                                                              image: MemoryImage(
                                                                  currentImage!),
                                                              fit:
                                                                  BoxFit.cover),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  separatorBuilder:
                                                      (BuildContext context,
                                                          int index) {
                                                    return const SizedBox(
                                                      width: 4,
                                                    );
                                                  },
                                                ),
                                              ),
                                            Row(
                                              mainAxisAlignment: isMine
                                                  ? MainAxisAlignment.end
                                                  : MainAxisAlignment.start,
                                              children: [
                                                Flexible(
                                                  child: Container(
                                                    constraints: isMine
                                                        ? BoxConstraints(
                                                            maxWidth: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.36)
                                                        : null,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                      color: isMine
                                                          ? const Color
                                                              .fromRGBO(
                                                              77, 77, 77, 1)
                                                          : Colors.transparent,
                                                    ),
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 12,
                                                        vertical: 6),
                                                    child: SelectableText(
                                                      (current.content ?? "")
                                                          .trim(),
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      if (isLast &&
                                          state.lastMessage == null &&
                                          state.isLoading)
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 12, top: 16),
                                              height: 15,
                                              width: 15,
                                              child: const FittedBox(
                                                child:
                                                    CircularProgressIndicator(
                                                  color: Colors.white,
                                                  strokeWidth: 1.5,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                    ],
                                  );
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
                                maxWidth: deviceSize.width * 0.6),
                            width: double.infinity,
                            height: 95 + (state.images.isEmpty ? 0 : 140),
                            margin: const EdgeInsets.only(bottom: 16),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromRGBO(70, 70, 70, 1),
                                  width: 1),
                              color: const Color.fromRGBO(60, 60, 60, 1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 2),
                            child: Column(
                              children: [
                                if (state.images.isNotEmpty)
                                  Container(
                                    height: 130,
                                    margin: const EdgeInsets.only(
                                        bottom: 8, top: 4),
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: state.images.length,
                                      itemBuilder: (context, index) {
                                        final current = state.images[index];
                                        return AspectRatio(
                                          aspectRatio: 1,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  image: MemoryImage(current),
                                                  fit: BoxFit.cover),
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      top: 4, right: 4),
                                                  height: 20,
                                                  width: 20,
                                                  child: FittedBox(
                                                    child: IconButton(
                                                      style: ButtonStyle(
                                                        side:
                                                            WidgetStateProperty
                                                                .all(
                                                          BorderSide(
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      .6),
                                                              width: 1),
                                                        ),
                                                        backgroundColor:
                                                            WidgetStateProperty
                                                                .all(
                                                          Colors.grey
                                                              .withOpacity(.8),
                                                        ),
                                                      ),
                                                      onPressed: () {
                                                        context
                                                            .read<ChatBloc>()
                                                            .add(ChatEvent
                                                                .removeImage(
                                                                    current));
                                                      },
                                                      icon: Icon(
                                                        Icons.close,
                                                        color: Colors.white
                                                            .withOpacity(.6),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                                              BorderRadius
                                                                  .circular(
                                                                      10)))),
                                              hoverColor: const Color.fromRGBO(
                                                  80, 80, 80, 1),
                                              icon: const Icon(
                                                Icons.add,
                                                size: 30,
                                                color: Color.fromRGBO(
                                                    203, 203, 202, 1),
                                              ),
                                              onPressed: () {
                                                context.read<ChatBloc>().add(
                                                    const ChatEvent
                                                        .pickImages());
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
                                                sendMessage(state, context);
                                              },
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      WidgetStateProperty.all(
                                                          Colors.white)),
                                              icon: state.isLoading
                                                  ? const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: FittedBox(
                                                        child:
                                                            CircularProgressIndicator(
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
              ),
            ],
          ),
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
