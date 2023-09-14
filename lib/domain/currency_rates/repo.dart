import 'package:converter/domain/currency_rates/model/currency_rate.dart';

typedef Rates = Map<CurrencyCode, double>;

abstract interface class CurrencyRatesRepo {
  Future<Rates> getAll();

  Future<Rates> addAll(Rates rates);
}
