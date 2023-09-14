import 'package:converter/domain/currency_rates/converter.dart';
import 'package:converter/domain/currency_rates/repo.dart';
import 'package:converter/domain/money/model/money.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'converter_test.mocks.dart';

@GenerateNiceMocks([MockSpec<CurrencyRatesRepo>()])
void main() {
  late MockCurrencyRatesRepo repo;
  late CurrencyConverter converter;

  setUp(() {
    repo = MockCurrencyRatesRepo();
    converter = CurrencyConverter(repo);
  });

  test('Деньги конвертируются в соответствии с рейтами из репозитория',
      () async {
    when(repo.getAll()).thenAnswer((_) => Future.value({
          'USD': 2,
          'RUB': 100,
        }));
    const money = Money(
      currencyCode: 'RUB',
      value: 50,
    );
    const target = 'USD';
    final converted = await converter.convert(money, target);
    expect(converted, const Money(value: 1, currencyCode: 'USD'));
  });
}
