import 'package:dartz/dartz.dart';
import 'package:elbek_ai/domain/model/image_prompt_response.dart';
import 'package:elbek_ai/domain/model/local_models_response.dart';
import 'package:elbek_ai/domain/model/stream_message.dart';
import 'package:flutter/services.dart';

abstract class OllamaInterface {
  Future<Either<Stream<Uint8List>, dynamic>> sendMessage({
    required List<Message> messages,
  });

  Future<Either<ImagePromptResponse, dynamic>> generateImage(Message message);

  Future<Either<LocalModelsResponse, dynamic>> getLocalModels();

  Future<Either<Stream<Uint8List>, dynamic>> pullModel(String model);

  Future<Either<dynamic, dynamic>> deleteModel(String model);
}
