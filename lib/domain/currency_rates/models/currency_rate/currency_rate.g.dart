// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrencyRate _$$_CurrencyRateFromJson(Map<String, dynamic> json) =>
    _$_CurrencyRate(
      code: json['code'] as String,
      rate: (json['rate'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CurrencyRateToJson(_$_CurrencyRate instance) =>
    <String, dynamic>{
      'code': instance.code,
      'rate': instance.rate,
    };
