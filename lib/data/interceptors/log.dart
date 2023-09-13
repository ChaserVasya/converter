import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@lazySingleton
class LogInterceptor extends Interceptor {
  LogInterceptor(this._logger);

  final Logger _logger;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final opts = err.requestOptions;
    if (!err.requestOptions.path.contains('logs')) {
      _logger.e(
        [
          'path: ${opts.baseUrl}${opts.path}',
          'error: ${err.error}',
          'message: ${err.message}',
          'data: ${_prettifyJson(err.response?.data)}',
        ].join('\n'),
      );
    }
    super.onError(err, handler);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (!options.path.contains('logs')) {
      _logger.d(
        [
          '${options.method} ${options.baseUrl}${options.path}',
          'query: ${_prettifyJson(options.queryParameters)}',
          'data: ${_prettifyJson(options.data)}',
        ].join('\n'),
      );
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final opts = response.requestOptions;
    if (!response.requestOptions.path.contains('logs')) {
      _logger.d(
        [
          'path: ${opts.baseUrl}${opts.path}',
          'data: ${_prettifyJson(response.data)}',
        ].join('\n'),
      );
    }
    super.onResponse(response, handler);
  }

  String _prettifyJson(Object? obj) {
    try {
      return const JsonEncoder.withIndent(' ').convert(obj);
    } on Exception catch (e) {
      return e.toString();
    }
  }
}
