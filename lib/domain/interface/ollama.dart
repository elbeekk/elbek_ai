import 'package:dartz/dartz.dart';
import 'package:elbek_ai/domain/model/image_prompt_response.dart';
import 'package:elbek_ai/domain/model/stream_message.dart';
import 'package:flutter/services.dart';

abstract class OllamaInterface {
  Future<Either<Stream<Uint8List>, dynamic>> sendMessage({
    required List<Message> messages,
  });

  Future<Either<ImagePromptResponse, dynamic>> generateImage(Message message);
}
