import 'package:converter/data/storage_types.dart';
import 'package:converter/domain/currency_rates/models/currency_rate/currency_rate.dart';
import 'package:converter/domain/currency_rates/repo.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: CurrencyRatesRepo)
class CurrencyReposSynchronizer implements CurrencyRatesRepo {
  CurrencyReposSynchronizer(
      @local this._local, @remote this._remote, this.logger);

  final CurrencyRatesRepo _local;
  final CurrencyRatesRepo _remote;
  final Logger logger;

  @override
  Future<Map<CurrencyCode, double>> getAll() async {
    try {
      final fetched = await _remote.getAll();
      final saved = await _local.addAll(fetched);
      return saved;
    } catch (e) {
      logger.e('$e');
      return _local.getAll();
    }
  }

  @override
  Future<Rates> addAll(Rates rates) {
    throw UnimplementedError();
  }
}
