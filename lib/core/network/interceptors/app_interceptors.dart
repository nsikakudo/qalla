import 'package:dio/dio.dart';

class AppInterceptors extends Interceptor {
  final Dio dio;

  AppInterceptors(this.dio);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Example: Add an API key or auth token to every request
    // options.headers['Authorization'] = 'Bearer your_token_here';
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Handle specific errors like 401 Unauthorized globally if needed
    // if (err.response?.statusCode == 401) {
    //   // refresh token logic or navigate to login
    // }
    super.onError(err, handler);
  }
}