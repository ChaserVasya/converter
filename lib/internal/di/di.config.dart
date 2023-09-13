// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:converter/data/clients/exchangeratesapi/currency_rates_repo.dart'
    as _i10;
import 'package:converter/data/interceptors/log.dart' as _i8;
import 'package:converter/domain/bloc_observer.dart' as _i6;
import 'package:converter/domain/currency/converter.dart' as _i11;
import 'package:converter/domain/currency/repo.dart' as _i9;
import 'package:converter/internal/di/di.dart' as _i13;
import 'package:converter/presentation/router/router.dart' as _i3;
import 'package:converter/presentation/screens/converting/bloc/converting_bloc.dart'
    as _i12;
import 'package:dio/dio.dart' as _i7;
import 'package:flutter_dotenv/flutter_dotenv.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
    await gh.singletonAsync<_i4.DotEnv>(
      () => appModule.initDotEnv(),
      preResolve: true,
    );
    gh.lazySingleton<_i5.Logger>(() => appModule.logger());
    gh.factory<_i6.AppBlocObserver>(
        () => _i6.AppBlocObserver(gh<_i5.Logger>()));
    gh.lazySingleton<_i7.Dio>(
      () => appModule.createExchangeClient(
        gh<_i5.Logger>(),
        gh<_i4.DotEnv>(),
      ),
      instanceName: 'exchangeClient',
    );
    gh.lazySingleton<_i8.LogInterceptor>(
        () => _i8.LogInterceptor(gh<_i5.Logger>()));
    gh.lazySingleton<_i9.CurrencyRepo>(() => _i10.ExchangeCurrencyRatesRepo(
        gh<_i7.Dio>(instanceName: 'exchangeClient')));
    gh.lazySingleton<_i11.CurrencyConverter>(
        () => _i11.CurrencyConverter(gh<_i9.CurrencyRepo>()));
    gh.factory<_i12.ConvertingBloc>(() => _i12.ConvertingBloc(
          gh<_i11.CurrencyConverter>(),
          gh<_i9.CurrencyRepo>(),
        ));
    return this;
  }
}

class _$AppModule extends _i13.AppModule {}
