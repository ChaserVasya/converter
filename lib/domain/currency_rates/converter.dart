import 'package:converter/domain/currency_rates/model/currency_rate.dart';
import 'package:converter/domain/currency_rates/repo.dart';
import 'package:converter/domain/money/model/money.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CurrencyConverter {
  CurrencyConverter(this._repo);

  final CurrencyRatesRepo _repo;

  Future<Money> convert(Money money, CurrencyCode targetCurrencyCode) async {
    final rate = await _calcTargetToSourceRate(
      source: money.currencyCode!,
      target: targetCurrencyCode,
    );

    return Money(
      currencyCode: targetCurrencyCode,
      value: money.value! * rate,
    );
  }

  Future<double> _calcTargetToSourceRate({
    required CurrencyCode source,
    required CurrencyCode target,
  }) async {
    final rateByCurrencyCode = await _repo.getAll();
    return rateByCurrencyCode[target]! / rateByCurrencyCode[source]!;
  }
}
