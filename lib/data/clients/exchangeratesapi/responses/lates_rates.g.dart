// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lates_rates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LatestRatesResponse _$$_LatestRatesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_LatestRatesResponse(
      success: json['success'] as bool,
      timestamp: json['timestamp'] as int,
      base: json['base'] as String,
      date: json['date'] as String,
      rates: (json['rates'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$_LatestRatesResponseToJson(
        _$_LatestRatesResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'timestamp': instance.timestamp,
      'base': instance.base,
      'date': instance.date,
      'rates': instance.rates,
    };
