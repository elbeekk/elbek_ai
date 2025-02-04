import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';

class HttpService {
  Dio client(
      {bool requireAuth = false,
      bool file = false,
      bool routing = false,
      String? domain,
      }) {
    final dio = Dio(
      BaseOptions(
        baseUrl: "http://localhost:11434",
        connectTimeout: const Duration(minutes: 20),
        receiveTimeout: const Duration(minutes: 20),
        sendTimeout: const Duration(minutes: 20),
        headers: {
          'Accept':
              '*/*',
          'Content-type': 'application/json',
          "Connection":"keep-alive"
        },
      ),
    )..interceptors.add(
        LogInterceptor(
          responseHeader: false,
          requestHeader: true,
          responseBody: true,
          requestBody: true,
        ),
      );
    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
        HttpClient()
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
    return dio;
  }
}
