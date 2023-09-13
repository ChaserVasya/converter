import 'package:dio/dio.dart';

class ExchangeAuthInterceptor extends Interceptor {
  ExchangeAuthInterceptor({required this.key});

  final String key;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters['access_key'] = key;
    super.onRequest(options, handler);
  }
}
