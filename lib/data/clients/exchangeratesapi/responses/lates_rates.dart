import 'package:converter/domain/currency_rates/model/currency_rate.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lates_rates.freezed.dart';
part 'lates_rates.g.dart';

@freezed
class LatestRatesResponse with _$LatestRatesResponse {
  const factory LatestRatesResponse({
    required bool success,
    required int timestamp,
    required String base,
    required String date,
    required Map<CurrencyCode, double> rates,
  }) = _LatestRatesResponse;

  factory LatestRatesResponse.fromJson(Map<String, dynamic> json) =>
      _$LatestRatesResponseFromJson(json);
}
