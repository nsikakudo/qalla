import 'package:dio/dio.dart';

class AppInterceptors extends Interceptor {
  final Dio dio;

  AppInterceptors(this.dio);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    //Add an API key or auth token to every request
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Handle specific errors like 401 Unauthorized globally if needed
    super.onError(err, handler);
  }
}