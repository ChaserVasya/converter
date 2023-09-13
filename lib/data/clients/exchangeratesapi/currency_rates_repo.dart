import 'package:converter/data/clients/exchangeratesapi/client.dart';
import 'package:converter/data/clients/exchangeratesapi/responses/lates_rates.dart';
import 'package:converter/domain/currency/models/currency_rate/currency_rate.dart';
import 'package:converter/domain/currency/repo.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CurrencyRepo)
class ExchangeCurrencyRatesRepo implements CurrencyRepo {
  ExchangeCurrencyRatesRepo(@exchangeClientName this._client);

  final Dio _client;

  @override
  Future<Map<CurrencyCode, double>> getAll() async {
    final res = await _client.get('latest');
    return LatestRatesResponse.fromJson(res.data).rates;
  }
}
