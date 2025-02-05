import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:elbek_ai/app_constants.dart';

class HttpService {
  Dio client({
    bool requireAuth = false,
    bool file = false,
    bool routing = false,
    String? domain,
  }) {
    final dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.localUrl,
        connectTimeout: const Duration(hours: 5),
        receiveTimeout: const Duration(minutes: 1),
        sendTimeout: const Duration(minutes: 1),
        headers: {
          'Accept': '*/*',
          'Content-type': 'application/json',
          "Connection": "keep-alive"
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
