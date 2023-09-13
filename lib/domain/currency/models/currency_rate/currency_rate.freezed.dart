// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyRate _$CurrencyRateFromJson(Map<String, dynamic> json) {
  return _CurrencyRate.fromJson(json);
}

/// @nodoc
mixin _$CurrencyRate {
  String get code => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyRateCopyWith<CurrencyRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyRateCopyWith<$Res> {
  factory $CurrencyRateCopyWith(
          CurrencyRate value, $Res Function(CurrencyRate) then) =
      _$CurrencyRateCopyWithImpl<$Res, CurrencyRate>;
  @useResult
  $Res call({String code, double rate});
}

/// @nodoc
class _$CurrencyRateCopyWithImpl<$Res, $Val extends CurrencyRate>
    implements $CurrencyRateCopyWith<$Res> {
  _$CurrencyRateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? rate = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrencyRateCopyWith<$Res>
    implements $CurrencyRateCopyWith<$Res> {
  factory _$$_CurrencyRateCopyWith(
          _$_CurrencyRate value, $Res Function(_$_CurrencyRate) then) =
      __$$_CurrencyRateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, double rate});
}

/// @nodoc
class __$$_CurrencyRateCopyWithImpl<$Res>
    extends _$CurrencyRateCopyWithImpl<$Res, _$_CurrencyRate>
    implements _$$_CurrencyRateCopyWith<$Res> {
  __$$_CurrencyRateCopyWithImpl(
      _$_CurrencyRate _value, $Res Function(_$_CurrencyRate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? rate = null,
  }) {
    return _then(_$_CurrencyRate(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrencyRate implements _CurrencyRate {
  const _$_CurrencyRate({required this.code, required this.rate});

  factory _$_CurrencyRate.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyRateFromJson(json);

  @override
  final String code;
  @override
  final double rate;

  @override
  String toString() {
    return 'CurrencyRate(code: $code, rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyRate &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, rate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyRateCopyWith<_$_CurrencyRate> get copyWith =>
      __$$_CurrencyRateCopyWithImpl<_$_CurrencyRate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyRateToJson(
      this,
    );
  }
}

abstract class _CurrencyRate implements CurrencyRate {
  const factory _CurrencyRate(
      {required final String code,
      required final double rate}) = _$_CurrencyRate;

  factory _CurrencyRate.fromJson(Map<String, dynamic> json) =
      _$_CurrencyRate.fromJson;

  @override
  String get code;
  @override
  double get rate;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyRateCopyWith<_$_CurrencyRate> get copyWith =>
      throw _privateConstructorUsedError;
}
