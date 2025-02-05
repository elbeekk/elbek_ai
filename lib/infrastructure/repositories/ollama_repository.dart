import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:elbek_ai/domain/interface/ollama.dart';
import 'package:elbek_ai/domain/model/local_models_response.dart';
import 'package:elbek_ai/domain/model/stream_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../domain/di/dependency_manager.dart';
import '../../domain/model/image_prompt_response.dart';
import '../local_storage/local_storage.dart';

class OllamaRepository implements OllamaInterface {
  @override
  Future<Either<Stream<Uint8List>, dynamic>> sendMessage({
    required List<Message> messages,
  }) async {
    final data = {
      "model": LocalStorage.getSelectedModel()?.name,
      "messages": messages
          .map(
            (e) => e.toJson(),
          )
          .toList()
    };

    try {
      final client = dioHttp.client();
      final res = await client.post(
        options: Options(responseType: ResponseType.stream),
        '/api/chat',
        data: data,
      );
      return left(res.data.stream);
    } catch (e) {
      debugPrint('==> sendMessage failure: $e');
      return right(e);
    }
  }

  @override
  Future<Either<ImagePromptResponse, dynamic>> generateImage(
      Message message) async {
    final data = {
      "model": LocalStorage.getSelectedModel()?.name,
      "prompt": message.content,
      "stream": false,
      "images": message.images
          ?.map(
            (e) => base64Encode(e),
          )
          .toList(),
    };

    try {
      final client = dioHttp.client();
      final res = await client.post(
        '/api/generate',
        data: data,
      );
      return left(ImagePromptResponse.fromJson(res.data));
    } catch (e) {
      debugPrint('==> generateImage failure: $e');
      return right(e);
    }
  }

  @override
  Future<Either<LocalModelsResponse, dynamic>> getLocalModels() async {
    try {
      final client = dioHttp.client();
      final res = await client.get('/api/tags');
      return left(LocalModelsResponse.fromJson(res.data));
    } catch (e) {
      debugPrint('==> getLocalModels failure: $e');
      return right(e);
    }
  }

  @override
  Future<Either<dynamic, dynamic>> deleteModel(String model) async {
    try {
      final client = dioHttp.client();
      final res = await client.delete('/api/delete', data: {"model": model});
      return left(res.data);
    } catch (e) {
      debugPrint('==> deleteModel failure: $e');
      return right(e);
    }
  }

  @override
  Future<Either<Stream<Uint8List>, dynamic>> pullModel(String model) async {
    try {
      final client = dioHttp.client();
      final res = await client.post('/api/pull',
          data: {"model": model},
          options: Options(responseType: ResponseType.stream));
      return left(res.data.stream);
    } catch (e) {
      debugPrint('==> deleteModel failure: $e');
      return right(e);
    }
  }
}
