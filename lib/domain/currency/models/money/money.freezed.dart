// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'money.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Money _$MoneyFromJson(Map<String, dynamic> json) {
  return _Money.fromJson(json);
}

/// @nodoc
mixin _$Money {
  double? get value => throw _privateConstructorUsedError;
  String? get currencyCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoneyCopyWith<Money> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoneyCopyWith<$Res> {
  factory $MoneyCopyWith(Money value, $Res Function(Money) then) =
      _$MoneyCopyWithImpl<$Res, Money>;
  @useResult
  $Res call({double? value, String? currencyCode});
}

/// @nodoc
class _$MoneyCopyWithImpl<$Res, $Val extends Money>
    implements $MoneyCopyWith<$Res> {
  _$MoneyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? currencyCode = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MoneyCopyWith<$Res> implements $MoneyCopyWith<$Res> {
  factory _$$_MoneyCopyWith(_$_Money value, $Res Function(_$_Money) then) =
      __$$_MoneyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? value, String? currencyCode});
}

/// @nodoc
class __$$_MoneyCopyWithImpl<$Res> extends _$MoneyCopyWithImpl<$Res, _$_Money>
    implements _$$_MoneyCopyWith<$Res> {
  __$$_MoneyCopyWithImpl(_$_Money _value, $Res Function(_$_Money) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? currencyCode = freezed,
  }) {
    return _then(_$_Money(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Money implements _Money {
  const _$_Money({this.value, this.currencyCode});

  factory _$_Money.fromJson(Map<String, dynamic> json) =>
      _$$_MoneyFromJson(json);

  @override
  final double? value;
  @override
  final String? currencyCode;

  @override
  String toString() {
    return 'Money(value: $value, currencyCode: $currencyCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Money &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, currencyCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoneyCopyWith<_$_Money> get copyWith =>
      __$$_MoneyCopyWithImpl<_$_Money>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoneyToJson(
      this,
    );
  }
}

abstract class _Money implements Money {
  const factory _Money({final double? value, final String? currencyCode}) =
      _$_Money;

  factory _Money.fromJson(Map<String, dynamic> json) = _$_Money.fromJson;

  @override
  double? get value;
  @override
  String? get currencyCode;
  @override
  @JsonKey(ignore: true)
  _$$_MoneyCopyWith<_$_Money> get copyWith =>
      throw _privateConstructorUsedError;
}
