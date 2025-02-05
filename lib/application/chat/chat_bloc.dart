import 'dart:convert';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:elbek_ai/domain/di/dependency_manager.dart';
import 'package:elbek_ai/domain/model/stream_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../domain/model/local_models_response.dart';

part 'chat_event.dart';

part 'chat_state.dart';

part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(const ChatState()) {
    on<SendMessage>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          messages: [
            ...state.messages,
            Message(
              content: event.message,
              role: 'user',
              images: state.images,
            )
          ],
        ),
      );

      if (state.images.isEmpty) {
        final res =
            await ollamaRepository.sendMessage(messages: state.messages);

        res.fold(
          (l) async {
            await event.onSuccess.call(l);
          },
          (r) {
            emit(state.copyWith(isLoading: false));
          },
        );
      } else {
        final temp = state.images;
        emit(state.copyWith(images: []));

        final res = await ollamaRepository
            .generateImage(Message(images: temp, content: event.message));

        res.fold(
          (l) {
            emit(
              state.copyWith(
                messages: [
                  ...state.messages,
                  Message(content: l.response, role: 'assistant')
                ],
                isLoading: false,
              ),
            );
          },
          (r) {},
        );
      }
    });
    on<AppendMessage>((event, emit) async {
      emit(state.copyWith(
          lastMessage: event.message.copyWith(
        message: event.message.message?.copyWith(
            content:
                "${state.lastMessage?.message?.content ?? ""}${event.message.message?.content ?? ""}"),
      )));
      if (event.message.done ?? false) {
        emit(
          state.copyWith(
              lastMessage: null,
              messages: [
                ...state.messages,
                if (state.lastMessage?.message != null)
                  state.lastMessage!.message!,
              ],
              isLoading: false),
        );
      }
    });
    on<PickImages>(
      (event, emit) async {
        final res = await ImagePicker().pickMultiImage();

        List<Uint8List> images = [];

        for (var e in res) {
          final value = await e.readAsBytes();
          if (value.isNotEmpty) {
            print(value);
            images.add(value);
          }
        }
        emit(
          state.copyWith(images: [...state.images, ...images]),
        );
      },
    );
    on<RemoveImage>(
      (event, emit) async {
        List<Uint8List> images = state.images.toList();

        images.removeWhere(
          (element) => element == event.image,
        );

        emit(
          state.copyWith(images: images),
        );
      },
    );
  }
}
