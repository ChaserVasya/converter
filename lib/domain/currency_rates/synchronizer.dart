import 'package:converter/data/storages/storage_types.dart';
import 'package:converter/domain/currency_rates/model/currency_rate.dart';
import 'package:converter/domain/currency_rates/repo.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: CurrencyRatesRepo)
class CurrencyReposSynchronizer implements CurrencyRatesRepo {
  CurrencyReposSynchronizer(
    @local this._local,
    @remote this._remote,
    this._logger,
  );

  final CurrencyRatesRepo _local;
  final CurrencyRatesRepo _remote;
  final Logger _logger;

  @override
  Future<Map<CurrencyCode, double>> getAll() async {
    try {
      final fetched = await _remote.getAll();
      final saved = await _local.addAll(fetched);
      return saved;
    } catch (e) {
      _logger.e('$e');
      return _local.getAll();
    }
  }

  @override
  Future<Rates> addAll(Rates rates) {
    throw UnimplementedError();
  }
}
