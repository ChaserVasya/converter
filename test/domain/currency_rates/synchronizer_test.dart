import 'package:converter/domain/currency_rates/repo.dart';
import 'package:converter/domain/currency_rates/synchronizer.dart';
import 'package:logger/logger.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'synchronizer_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<CurrencyRatesRepo>(),
  MockSpec<Logger>(),
])
void main() {
  late CurrencyReposSynchronizer syn;
  late MockCurrencyRatesRepo local;
  late MockCurrencyRatesRepo remote;

  setUp(() {
    local = MockCurrencyRatesRepo();
    remote = MockCurrencyRatesRepo();
    syn = CurrencyReposSynchronizer(local, remote, MockLogger());
  });
  test(
    'Если получилось взять рейты с удаленного хранилища, они дублируются в '
    'локальном',
    () async {
      final remoteData = {'USD': 0.0, 'RUB': 0.0};
      when(remote.getAll()).thenAnswer((_) async => remoteData);
      await syn.getAll();
      expect(verify(local.addAll(captureAny)).captured.single, remoteData);
    },
  );
  test(
    'Если не получилось взять рейты с удаленного хранилища, они берутся из '
    'локального',
    () async {
      final localData = {'USD': 0.0, 'RUB': 0.0};
      when(local.getAll()).thenAnswer((_) async => localData);
      when(remote.getAll()).thenThrow(Exception());
      final result = await syn.getAll();
      expect(result, localData);
    },
  );
}
