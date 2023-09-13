import 'package:converter/data/clients/exchangeratesapi/interceptors/auth.dart';
import 'package:converter/data/interceptors/log.dart';
import 'package:dio/dio.dart' hide LogInterceptor;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

const exchangeClientName = Named('exchangeClient');

Dio exchangeClient(Logger logger, DotEnv dotenv) {
  final dio = Dio(BaseOptions(
    baseUrl: 'http://api.exchangeratesapi.io/v1/',
  ));
  return dio
    ..interceptors.addAll([
      ExchangeAuthInterceptor(key: dotenv.env['EXCHANGE_KEY']!),
      LogInterceptor(logger),
    ]);
}
