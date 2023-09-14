// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:converter/data/interceptors/log.dart' as _i11;
import 'package:converter/data/storages/currency_rate/local.dart' as _i9;
import 'package:converter/data/storages/currency_rate/remote.dart' as _i12;
import 'package:converter/domain/currency_rates/converter.dart' as _i14;
import 'package:converter/domain/currency_rates/repo.dart' as _i8;
import 'package:converter/domain/currency_rates/synchronizer.dart' as _i13;
import 'package:converter/domain/logging/bloc_observer.dart' as _i7;
import 'package:converter/internal/di/di.dart' as _i16;
import 'package:converter/presentation/router/router.dart' as _i3;
import 'package:converter/presentation/screens/converting/bloc/converting_bloc.dart'
    as _i15;
import 'package:dio/dio.dart' as _i10;
import 'package:flutter_dotenv/flutter_dotenv.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i5;
import 'package:logger/logger.dart' as _i6;

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
    await gh.singletonAsync<_i5.Isar>(
      () => appModule.initIsar(),
      preResolve: true,
    );
    gh.lazySingleton<_i6.Logger>(() => appModule.logger());
    gh.factory<_i7.AppBlocObserver>(
        () => _i7.AppBlocObserver(gh<_i6.Logger>()));
    gh.lazySingleton<_i8.CurrencyRatesRepo>(
      () => _i9.CurrencyRatesLocalStorage(gh<_i5.Isar>()),
      instanceName: 'local',
    );
    gh.lazySingleton<_i10.Dio>(
      () => appModule.createExchangeClient(
        gh<_i6.Logger>(),
        gh<_i4.DotEnv>(),
      ),
      instanceName: 'exchangeClient',
    );
    gh.lazySingleton<_i11.LogInterceptor>(
        () => _i11.LogInterceptor(gh<_i6.Logger>()));
    gh.lazySingleton<_i8.CurrencyRatesRepo>(
      () => _i12.ExchangeCurrencyRatesRepo(
          gh<_i10.Dio>(instanceName: 'exchangeClient')),
      instanceName: 'remote',
    );
    gh.lazySingleton<_i8.CurrencyRatesRepo>(
        () => _i13.CurrencyReposSynchronizer(
              gh<_i8.CurrencyRatesRepo>(instanceName: 'local'),
              gh<_i8.CurrencyRatesRepo>(instanceName: 'remote'),
              gh<_i6.Logger>(),
            ));
    gh.lazySingleton<_i14.CurrencyConverter>(
        () => _i14.CurrencyConverter(gh<_i8.CurrencyRatesRepo>()));
    gh.factory<_i15.ConvertingBloc>(() => _i15.ConvertingBloc(
          gh<_i14.CurrencyConverter>(),
          gh<_i8.CurrencyRatesRepo>(),
        ));
    return this;
  }
}

class _$AppModule extends _i16.AppModule {}
