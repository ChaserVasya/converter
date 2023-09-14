import 'package:converter/data/clients/exchangeratesapi/client.dart';
import 'package:converter/data/clients/exchangeratesapi/responses/lates_rates.dart';
import 'package:converter/data/storages/storage_types.dart';
import 'package:converter/domain/currency_rates/model/currency_rate.dart';
import 'package:converter/domain/currency_rates/repo.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@remote
@LazySingleton(as: CurrencyRatesRepo)
class ExchangeCurrencyRatesRepo implements CurrencyRatesRepo {
  const ExchangeCurrencyRatesRepo(@exchangeClientName this._client);

  final Dio _client;

  @override
  Future<Map<CurrencyCode, double>> getAll() async {
    final res = await _client.get('latest');
    return LatestRatesResponse.fromJson(res.data).rates;
  }

  @override
  Future<Rates> addAll(Rates rates) {
    throw UnimplementedError();
  }
}
