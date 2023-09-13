// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Money _$$_MoneyFromJson(Map<String, dynamic> json) => _$_Money(
      value: (json['value'] as num?)?.toDouble(),
      currencyCode: json['currencyCode'] as String?,
    );

Map<String, dynamic> _$$_MoneyToJson(_$_Money instance) => <String, dynamic>{
      'value': instance.value,
      'currencyCode': instance.currencyCode,
    };
