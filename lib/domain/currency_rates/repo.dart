import 'package:converter/domain/currency_rates/models/currency_rate/currency_rate.dart';

typedef Rates = Map<CurrencyCode, double>;

abstract interface class CurrencyRatesRepo {
  Future<Rates> getAll();

  Future<Rates> addAll(Rates rates);
}
