import 'package:converter/data/storages/currency_rate/dto/dto.dart';
import 'package:converter/data/storages/storage_types.dart';
import 'package:converter/domain/currency_rates/repo.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@local
@LazySingleton(as: CurrencyRatesRepo)
class CurrencyRatesLocalStorage implements CurrencyRatesRepo {
  CurrencyRatesLocalStorage(this._isar);

  final Isar _isar;

  @override
  Future<Rates> addAll(Rates rates) async {
    final dtos = [
      for (final rate in rates.entries)
        CurrencyRate(
          code: rate.key,
          rate: rate.value,
        )
    ];
    await _isar.writeTxn(() async {
      await _isar.currencyRates.putAll(dtos);
    });
    return rates;
  }

  @override
  Future<Rates> getAll() async {
    final rates = await _isar.currencyRates.where().findAll();
    return {
      for (final rate in rates) //
        rate.code: rate.rate,
    };
  }
}
