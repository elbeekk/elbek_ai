part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.sendMessage(String message,
      {required Function(Stream<Uint8List>) onSuccess}) = SendMessage;

  const factory ChatEvent.appendMessage(StreamMessage message) = AppendMessage;
  const factory ChatEvent.pickImages() = PickImages;
  const factory ChatEvent.removeImage(Uint8List image) = RemoveImage;


}
