import 'dart:async';

import 'package:converter/data/clients/exchangeratesapi/client.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import 'di.config.dart';

final getIt = GetIt.I;

@injectableInit
FutureOr<void> configureDependencies(String? env) =>
    getIt.init(environment: env);

@module
abstract class AppModule {
  @exchangeClientName
  @lazySingleton
  Dio createExchangeClient(Logger logger, DotEnv dotenv) {
    return exchangeClient(logger, dotenv);
  }

  @lazySingleton
  Logger logger() => Logger();

  @preResolve
  @singleton
  Future<DotEnv> initDotEnv() async {
    await dotenv.load(fileName: "env/.env");
    return dotenv;
  }
}
