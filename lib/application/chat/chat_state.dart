part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    StreamMessage? lastMessage,
    @Default([]) List<Message> messages,
    @Default(false) bool isLoading,
    @Default([]) List<Uint8List> images,
  }) = _ChatState;
}
