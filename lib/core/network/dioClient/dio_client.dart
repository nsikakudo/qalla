import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../../services/endpoints.dart';
import '../interceptors/app_interceptors.dart';

class DioClient {
  DioClient._();

  static Dio create() {
    final dio = Dio(
      BaseOptions(
        baseUrl: Endpoints.baseUrl,
        receiveTimeout: const Duration(milliseconds: Endpoints.receiveTimeout),
        connectTimeout: const Duration(milliseconds: Endpoints.connectionTimeout),
        responseType: ResponseType.json,
      ),
    );

    dio.interceptors.add(AppInterceptors(dio));

    if (kDebugMode) {
      dio.interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
        ),
      );
    }
    return dio;
  }
}