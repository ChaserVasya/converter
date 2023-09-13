import 'package:converter/domain/currency/models/currency_rate/currency_rate.dart';

abstract interface class CurrencyRepo {
  Future<Map<CurrencyCode, double>> getAll();
}
