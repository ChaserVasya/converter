import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_rate.freezed.dart';
part 'currency_rate.g.dart';

typedef CurrencyCode = String;

@freezed
class CurrencyRate with _$CurrencyRate {
  const factory CurrencyRate({
    required CurrencyCode code,
    required double rate,
  }) = _CurrencyRate;

  factory CurrencyRate.fromJson(Map<String, dynamic> json) =>
      _$CurrencyRateFromJson(json);
}
