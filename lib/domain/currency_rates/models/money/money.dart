import 'package:converter/domain/currency_rates/models/currency_rate/currency_rate.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'money.freezed.dart';
part 'money.g.dart';

@freezed
class Money with _$Money {
  const factory Money({
    double? value,
    CurrencyCode? currencyCode,
  }) = _Money;

  factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);
}
