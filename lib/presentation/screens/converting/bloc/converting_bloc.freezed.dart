// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'converting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConvertingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CurrencyFields field, double newValue)
        valueChanged,
    required TResult Function(CurrencyFields field, String newCode)
        currencySelected,
    required TResult Function() swap,
    required TResult Function() refresh,
    required TResult Function(CurrencyFields field) shouldSelectCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CurrencyFields field, double newValue)? valueChanged,
    TResult? Function(CurrencyFields field, String newCode)? currencySelected,
    TResult? Function()? swap,
    TResult? Function()? refresh,
    TResult? Function(CurrencyFields field)? shouldSelectCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CurrencyFields field, double newValue)? valueChanged,
    TResult Function(CurrencyFields field, String newCode)? currencySelected,
    TResult Function()? swap,
    TResult Function()? refresh,
    TResult Function(CurrencyFields field)? shouldSelectCurrency,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_CurrencySelected value) currencySelected,
    required TResult Function(_SwapEvent value) swap,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ShouldSelectCurrency value) shouldSelectCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValueChanged value)? valueChanged,
    TResult? Function(_CurrencySelected value)? currencySelected,
    TResult? Function(_SwapEvent value)? swap,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ShouldSelectCurrency value)? shouldSelectCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_CurrencySelected value)? currencySelected,
    TResult Function(_SwapEvent value)? swap,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ShouldSelectCurrency value)? shouldSelectCurrency,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvertingEventCopyWith<$Res> {
  factory $ConvertingEventCopyWith(
          ConvertingEvent value, $Res Function(ConvertingEvent) then) =
      _$ConvertingEventCopyWithImpl<$Res, ConvertingEvent>;
}

/// @nodoc
class _$ConvertingEventCopyWithImpl<$Res, $Val extends ConvertingEvent>
    implements $ConvertingEventCopyWith<$Res> {
  _$ConvertingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ValueChangedCopyWith<$Res> {
  factory _$$_ValueChangedCopyWith(
          _$_ValueChanged value, $Res Function(_$_ValueChanged) then) =
      __$$_ValueChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrencyFields field, double newValue});
}

/// @nodoc
class __$$_ValueChangedCopyWithImpl<$Res>
    extends _$ConvertingEventCopyWithImpl<$Res, _$_ValueChanged>
    implements _$$_ValueChangedCopyWith<$Res> {
  __$$_ValueChangedCopyWithImpl(
      _$_ValueChanged _value, $Res Function(_$_ValueChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? newValue = null,
  }) {
    return _then(_$_ValueChanged(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as CurrencyFields,
      newValue: null == newValue
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ValueChanged implements _ValueChanged {
  const _$_ValueChanged({required this.field, required this.newValue});

  @override
  final CurrencyFields field;
  @override
  final double newValue;

  @override
  String toString() {
    return 'ConvertingEvent.valueChanged(field: $field, newValue: $newValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValueChanged &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.newValue, newValue) ||
                other.newValue == newValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field, newValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValueChangedCopyWith<_$_ValueChanged> get copyWith =>
      __$$_ValueChangedCopyWithImpl<_$_ValueChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CurrencyFields field, double newValue)
        valueChanged,
    required TResult Function(CurrencyFields field, String newCode)
        currencySelected,
    required TResult Function() swap,
    required TResult Function() refresh,
    required TResult Function(CurrencyFields field) shouldSelectCurrency,
  }) {
    return valueChanged(field, newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CurrencyFields field, double newValue)? valueChanged,
    TResult? Function(CurrencyFields field, String newCode)? currencySelected,
    TResult? Function()? swap,
    TResult? Function()? refresh,
    TResult? Function(CurrencyFields field)? shouldSelectCurrency,
  }) {
    return valueChanged?.call(field, newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CurrencyFields field, double newValue)? valueChanged,
    TResult Function(CurrencyFields field, String newCode)? currencySelected,
    TResult Function()? swap,
    TResult Function()? refresh,
    TResult Function(CurrencyFields field)? shouldSelectCurrency,
    required TResult orElse(),
  }) {
    if (valueChanged != null) {
      return valueChanged(field, newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_CurrencySelected value) currencySelected,
    required TResult Function(_SwapEvent value) swap,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ShouldSelectCurrency value) shouldSelectCurrency,
  }) {
    return valueChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValueChanged value)? valueChanged,
    TResult? Function(_CurrencySelected value)? currencySelected,
    TResult? Function(_SwapEvent value)? swap,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ShouldSelectCurrency value)? shouldSelectCurrency,
  }) {
    return valueChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_CurrencySelected value)? currencySelected,
    TResult Function(_SwapEvent value)? swap,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ShouldSelectCurrency value)? shouldSelectCurrency,
    required TResult orElse(),
  }) {
    if (valueChanged != null) {
      return valueChanged(this);
    }
    return orElse();
  }
}

abstract class _ValueChanged implements ConvertingEvent {
  const factory _ValueChanged(
      {required final CurrencyFields field,
      required final double newValue}) = _$_ValueChanged;

  CurrencyFields get field;
  double get newValue;
  @JsonKey(ignore: true)
  _$$_ValueChangedCopyWith<_$_ValueChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CurrencySelectedCopyWith<$Res> {
  factory _$$_CurrencySelectedCopyWith(
          _$_CurrencySelected value, $Res Function(_$_CurrencySelected) then) =
      __$$_CurrencySelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrencyFields field, String newCode});
}

/// @nodoc
class __$$_CurrencySelectedCopyWithImpl<$Res>
    extends _$ConvertingEventCopyWithImpl<$Res, _$_CurrencySelected>
    implements _$$_CurrencySelectedCopyWith<$Res> {
  __$$_CurrencySelectedCopyWithImpl(
      _$_CurrencySelected _value, $Res Function(_$_CurrencySelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? newCode = null,
  }) {
    return _then(_$_CurrencySelected(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as CurrencyFields,
      newCode: null == newCode
          ? _value.newCode
          : newCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CurrencySelected implements _CurrencySelected {
  const _$_CurrencySelected({required this.field, required this.newCode});

  @override
  final CurrencyFields field;
  @override
  final String newCode;

  @override
  String toString() {
    return 'ConvertingEvent.currencySelected(field: $field, newCode: $newCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencySelected &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.newCode, newCode) || other.newCode == newCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field, newCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencySelectedCopyWith<_$_CurrencySelected> get copyWith =>
      __$$_CurrencySelectedCopyWithImpl<_$_CurrencySelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CurrencyFields field, double newValue)
        valueChanged,
    required TResult Function(CurrencyFields field, String newCode)
        currencySelected,
    required TResult Function() swap,
    required TResult Function() refresh,
    required TResult Function(CurrencyFields field) shouldSelectCurrency,
  }) {
    return currencySelected(field, newCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CurrencyFields field, double newValue)? valueChanged,
    TResult? Function(CurrencyFields field, String newCode)? currencySelected,
    TResult? Function()? swap,
    TResult? Function()? refresh,
    TResult? Function(CurrencyFields field)? shouldSelectCurrency,
  }) {
    return currencySelected?.call(field, newCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CurrencyFields field, double newValue)? valueChanged,
    TResult Function(CurrencyFields field, String newCode)? currencySelected,
    TResult Function()? swap,
    TResult Function()? refresh,
    TResult Function(CurrencyFields field)? shouldSelectCurrency,
    required TResult orElse(),
  }) {
    if (currencySelected != null) {
      return currencySelected(field, newCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_CurrencySelected value) currencySelected,
    required TResult Function(_SwapEvent value) swap,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ShouldSelectCurrency value) shouldSelectCurrency,
  }) {
    return currencySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValueChanged value)? valueChanged,
    TResult? Function(_CurrencySelected value)? currencySelected,
    TResult? Function(_SwapEvent value)? swap,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ShouldSelectCurrency value)? shouldSelectCurrency,
  }) {
    return currencySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_CurrencySelected value)? currencySelected,
    TResult Function(_SwapEvent value)? swap,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ShouldSelectCurrency value)? shouldSelectCurrency,
    required TResult orElse(),
  }) {
    if (currencySelected != null) {
      return currencySelected(this);
    }
    return orElse();
  }
}

abstract class _CurrencySelected implements ConvertingEvent {
  const factory _CurrencySelected(
      {required final CurrencyFields field,
      required final String newCode}) = _$_CurrencySelected;

  CurrencyFields get field;
  String get newCode;
  @JsonKey(ignore: true)
  _$$_CurrencySelectedCopyWith<_$_CurrencySelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SwapEventCopyWith<$Res> {
  factory _$$_SwapEventCopyWith(
          _$_SwapEvent value, $Res Function(_$_SwapEvent) then) =
      __$$_SwapEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SwapEventCopyWithImpl<$Res>
    extends _$ConvertingEventCopyWithImpl<$Res, _$_SwapEvent>
    implements _$$_SwapEventCopyWith<$Res> {
  __$$_SwapEventCopyWithImpl(
      _$_SwapEvent _value, $Res Function(_$_SwapEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SwapEvent implements _SwapEvent {
  const _$_SwapEvent();

  @override
  String toString() {
    return 'ConvertingEvent.swap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SwapEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CurrencyFields field, double newValue)
        valueChanged,
    required TResult Function(CurrencyFields field, String newCode)
        currencySelected,
    required TResult Function() swap,
    required TResult Function() refresh,
    required TResult Function(CurrencyFields field) shouldSelectCurrency,
  }) {
    return swap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CurrencyFields field, double newValue)? valueChanged,
    TResult? Function(CurrencyFields field, String newCode)? currencySelected,
    TResult? Function()? swap,
    TResult? Function()? refresh,
    TResult? Function(CurrencyFields field)? shouldSelectCurrency,
  }) {
    return swap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CurrencyFields field, double newValue)? valueChanged,
    TResult Function(CurrencyFields field, String newCode)? currencySelected,
    TResult Function()? swap,
    TResult Function()? refresh,
    TResult Function(CurrencyFields field)? shouldSelectCurrency,
    required TResult orElse(),
  }) {
    if (swap != null) {
      return swap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_CurrencySelected value) currencySelected,
    required TResult Function(_SwapEvent value) swap,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ShouldSelectCurrency value) shouldSelectCurrency,
  }) {
    return swap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValueChanged value)? valueChanged,
    TResult? Function(_CurrencySelected value)? currencySelected,
    TResult? Function(_SwapEvent value)? swap,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ShouldSelectCurrency value)? shouldSelectCurrency,
  }) {
    return swap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_CurrencySelected value)? currencySelected,
    TResult Function(_SwapEvent value)? swap,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ShouldSelectCurrency value)? shouldSelectCurrency,
    required TResult orElse(),
  }) {
    if (swap != null) {
      return swap(this);
    }
    return orElse();
  }
}

abstract class _SwapEvent implements ConvertingEvent {
  const factory _SwapEvent() = _$_SwapEvent;
}

/// @nodoc
abstract class _$$_RefreshCopyWith<$Res> {
  factory _$$_RefreshCopyWith(
          _$_Refresh value, $Res Function(_$_Refresh) then) =
      __$$_RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshCopyWithImpl<$Res>
    extends _$ConvertingEventCopyWithImpl<$Res, _$_Refresh>
    implements _$$_RefreshCopyWith<$Res> {
  __$$_RefreshCopyWithImpl(_$_Refresh _value, $Res Function(_$_Refresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Refresh implements _Refresh {
  const _$_Refresh();

  @override
  String toString() {
    return 'ConvertingEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CurrencyFields field, double newValue)
        valueChanged,
    required TResult Function(CurrencyFields field, String newCode)
        currencySelected,
    required TResult Function() swap,
    required TResult Function() refresh,
    required TResult Function(CurrencyFields field) shouldSelectCurrency,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CurrencyFields field, double newValue)? valueChanged,
    TResult? Function(CurrencyFields field, String newCode)? currencySelected,
    TResult? Function()? swap,
    TResult? Function()? refresh,
    TResult? Function(CurrencyFields field)? shouldSelectCurrency,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CurrencyFields field, double newValue)? valueChanged,
    TResult Function(CurrencyFields field, String newCode)? currencySelected,
    TResult Function()? swap,
    TResult Function()? refresh,
    TResult Function(CurrencyFields field)? shouldSelectCurrency,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_CurrencySelected value) currencySelected,
    required TResult Function(_SwapEvent value) swap,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ShouldSelectCurrency value) shouldSelectCurrency,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValueChanged value)? valueChanged,
    TResult? Function(_CurrencySelected value)? currencySelected,
    TResult? Function(_SwapEvent value)? swap,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ShouldSelectCurrency value)? shouldSelectCurrency,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_CurrencySelected value)? currencySelected,
    TResult Function(_SwapEvent value)? swap,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ShouldSelectCurrency value)? shouldSelectCurrency,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements ConvertingEvent {
  const factory _Refresh() = _$_Refresh;
}

/// @nodoc
abstract class _$$_ShouldSelectCurrencyCopyWith<$Res> {
  factory _$$_ShouldSelectCurrencyCopyWith(_$_ShouldSelectCurrency value,
          $Res Function(_$_ShouldSelectCurrency) then) =
      __$$_ShouldSelectCurrencyCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrencyFields field});
}

/// @nodoc
class __$$_ShouldSelectCurrencyCopyWithImpl<$Res>
    extends _$ConvertingEventCopyWithImpl<$Res, _$_ShouldSelectCurrency>
    implements _$$_ShouldSelectCurrencyCopyWith<$Res> {
  __$$_ShouldSelectCurrencyCopyWithImpl(_$_ShouldSelectCurrency _value,
      $Res Function(_$_ShouldSelectCurrency) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
  }) {
    return _then(_$_ShouldSelectCurrency(
      null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as CurrencyFields,
    ));
  }
}

/// @nodoc

class _$_ShouldSelectCurrency implements _ShouldSelectCurrency {
  const _$_ShouldSelectCurrency(this.field);

  @override
  final CurrencyFields field;

  @override
  String toString() {
    return 'ConvertingEvent.shouldSelectCurrency(field: $field)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShouldSelectCurrency &&
            (identical(other.field, field) || other.field == field));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShouldSelectCurrencyCopyWith<_$_ShouldSelectCurrency> get copyWith =>
      __$$_ShouldSelectCurrencyCopyWithImpl<_$_ShouldSelectCurrency>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CurrencyFields field, double newValue)
        valueChanged,
    required TResult Function(CurrencyFields field, String newCode)
        currencySelected,
    required TResult Function() swap,
    required TResult Function() refresh,
    required TResult Function(CurrencyFields field) shouldSelectCurrency,
  }) {
    return shouldSelectCurrency(field);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CurrencyFields field, double newValue)? valueChanged,
    TResult? Function(CurrencyFields field, String newCode)? currencySelected,
    TResult? Function()? swap,
    TResult? Function()? refresh,
    TResult? Function(CurrencyFields field)? shouldSelectCurrency,
  }) {
    return shouldSelectCurrency?.call(field);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CurrencyFields field, double newValue)? valueChanged,
    TResult Function(CurrencyFields field, String newCode)? currencySelected,
    TResult Function()? swap,
    TResult Function()? refresh,
    TResult Function(CurrencyFields field)? shouldSelectCurrency,
    required TResult orElse(),
  }) {
    if (shouldSelectCurrency != null) {
      return shouldSelectCurrency(field);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_CurrencySelected value) currencySelected,
    required TResult Function(_SwapEvent value) swap,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ShouldSelectCurrency value) shouldSelectCurrency,
  }) {
    return shouldSelectCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValueChanged value)? valueChanged,
    TResult? Function(_CurrencySelected value)? currencySelected,
    TResult? Function(_SwapEvent value)? swap,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ShouldSelectCurrency value)? shouldSelectCurrency,
  }) {
    return shouldSelectCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_CurrencySelected value)? currencySelected,
    TResult Function(_SwapEvent value)? swap,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ShouldSelectCurrency value)? shouldSelectCurrency,
    required TResult orElse(),
  }) {
    if (shouldSelectCurrency != null) {
      return shouldSelectCurrency(this);
    }
    return orElse();
  }
}

abstract class _ShouldSelectCurrency implements ConvertingEvent {
  const factory _ShouldSelectCurrency(final CurrencyFields field) =
      _$_ShouldSelectCurrency;

  CurrencyFields get field;
  @JsonKey(ignore: true)
  _$$_ShouldSelectCurrencyCopyWith<_$_ShouldSelectCurrency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConvertingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Money money1, Money money2) data,
    required TResult Function(Money money1, Money money2) swap,
    required TResult Function(List<String> codes, CurrencyFields field)
        selectCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Money money1, Money money2)? data,
    TResult? Function(Money money1, Money money2)? swap,
    TResult? Function(List<String> codes, CurrencyFields field)? selectCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Money money1, Money money2)? data,
    TResult Function(Money money1, Money money2)? swap,
    TResult Function(List<String> codes, CurrencyFields field)? selectCurrency,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_Swap value) swap,
    required TResult Function(_SelectCurrency value) selectCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data value)? data,
    TResult? Function(_Swap value)? swap,
    TResult? Function(_SelectCurrency value)? selectCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Swap value)? swap,
    TResult Function(_SelectCurrency value)? selectCurrency,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvertingStateCopyWith<$Res> {
  factory $ConvertingStateCopyWith(
          ConvertingState value, $Res Function(ConvertingState) then) =
      _$ConvertingStateCopyWithImpl<$Res, ConvertingState>;
}

/// @nodoc
class _$ConvertingStateCopyWithImpl<$Res, $Val extends ConvertingState>
    implements $ConvertingStateCopyWith<$Res> {
  _$ConvertingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @useResult
  $Res call({Money money1, Money money2});

  $MoneyCopyWith<$Res> get money1;
  $MoneyCopyWith<$Res> get money2;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res>
    extends _$ConvertingStateCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? money1 = null,
    Object? money2 = null,
  }) {
    return _then(_$_Data(
      money1: null == money1
          ? _value.money1
          : money1 // ignore: cast_nullable_to_non_nullable
              as Money,
      money2: null == money2
          ? _value.money2
          : money2 // ignore: cast_nullable_to_non_nullable
              as Money,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get money1 {
    return $MoneyCopyWith<$Res>(_value.money1, (value) {
      return _then(_value.copyWith(money1: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get money2 {
    return $MoneyCopyWith<$Res>(_value.money2, (value) {
      return _then(_value.copyWith(money2: value));
    });
  }
}

/// @nodoc

class _$_Data implements _Data {
  const _$_Data({this.money1 = const Money(), this.money2 = const Money()});

  @override
  @JsonKey()
  final Money money1;
  @override
  @JsonKey()
  final Money money2;

  @override
  String toString() {
    return 'ConvertingState.data(money1: $money1, money2: $money2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.money1, money1) || other.money1 == money1) &&
            (identical(other.money2, money2) || other.money2 == money2));
  }

  @override
  int get hashCode => Object.hash(runtimeType, money1, money2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Money money1, Money money2) data,
    required TResult Function(Money money1, Money money2) swap,
    required TResult Function(List<String> codes, CurrencyFields field)
        selectCurrency,
  }) {
    return data(money1, money2);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Money money1, Money money2)? data,
    TResult? Function(Money money1, Money money2)? swap,
    TResult? Function(List<String> codes, CurrencyFields field)? selectCurrency,
  }) {
    return data?.call(money1, money2);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Money money1, Money money2)? data,
    TResult Function(Money money1, Money money2)? swap,
    TResult Function(List<String> codes, CurrencyFields field)? selectCurrency,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(money1, money2);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_Swap value) swap,
    required TResult Function(_SelectCurrency value) selectCurrency,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data value)? data,
    TResult? Function(_Swap value)? swap,
    TResult? Function(_SelectCurrency value)? selectCurrency,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Swap value)? swap,
    TResult Function(_SelectCurrency value)? selectCurrency,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements ConvertingState {
  const factory _Data({final Money money1, final Money money2}) = _$_Data;

  Money get money1;
  Money get money2;
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SwapCopyWith<$Res> {
  factory _$$_SwapCopyWith(_$_Swap value, $Res Function(_$_Swap) then) =
      __$$_SwapCopyWithImpl<$Res>;
  @useResult
  $Res call({Money money1, Money money2});

  $MoneyCopyWith<$Res> get money1;
  $MoneyCopyWith<$Res> get money2;
}

/// @nodoc
class __$$_SwapCopyWithImpl<$Res>
    extends _$ConvertingStateCopyWithImpl<$Res, _$_Swap>
    implements _$$_SwapCopyWith<$Res> {
  __$$_SwapCopyWithImpl(_$_Swap _value, $Res Function(_$_Swap) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? money1 = null,
    Object? money2 = null,
  }) {
    return _then(_$_Swap(
      money1: null == money1
          ? _value.money1
          : money1 // ignore: cast_nullable_to_non_nullable
              as Money,
      money2: null == money2
          ? _value.money2
          : money2 // ignore: cast_nullable_to_non_nullable
              as Money,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get money1 {
    return $MoneyCopyWith<$Res>(_value.money1, (value) {
      return _then(_value.copyWith(money1: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get money2 {
    return $MoneyCopyWith<$Res>(_value.money2, (value) {
      return _then(_value.copyWith(money2: value));
    });
  }
}

/// @nodoc

class _$_Swap implements _Swap {
  const _$_Swap({required this.money1, required this.money2});

  @override
  final Money money1;
  @override
  final Money money2;

  @override
  String toString() {
    return 'ConvertingState.swap(money1: $money1, money2: $money2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Swap &&
            (identical(other.money1, money1) || other.money1 == money1) &&
            (identical(other.money2, money2) || other.money2 == money2));
  }

  @override
  int get hashCode => Object.hash(runtimeType, money1, money2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SwapCopyWith<_$_Swap> get copyWith =>
      __$$_SwapCopyWithImpl<_$_Swap>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Money money1, Money money2) data,
    required TResult Function(Money money1, Money money2) swap,
    required TResult Function(List<String> codes, CurrencyFields field)
        selectCurrency,
  }) {
    return swap(money1, money2);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Money money1, Money money2)? data,
    TResult? Function(Money money1, Money money2)? swap,
    TResult? Function(List<String> codes, CurrencyFields field)? selectCurrency,
  }) {
    return swap?.call(money1, money2);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Money money1, Money money2)? data,
    TResult Function(Money money1, Money money2)? swap,
    TResult Function(List<String> codes, CurrencyFields field)? selectCurrency,
    required TResult orElse(),
  }) {
    if (swap != null) {
      return swap(money1, money2);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_Swap value) swap,
    required TResult Function(_SelectCurrency value) selectCurrency,
  }) {
    return swap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data value)? data,
    TResult? Function(_Swap value)? swap,
    TResult? Function(_SelectCurrency value)? selectCurrency,
  }) {
    return swap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Swap value)? swap,
    TResult Function(_SelectCurrency value)? selectCurrency,
    required TResult orElse(),
  }) {
    if (swap != null) {
      return swap(this);
    }
    return orElse();
  }
}

abstract class _Swap implements ConvertingState {
  const factory _Swap(
      {required final Money money1, required final Money money2}) = _$_Swap;

  Money get money1;
  Money get money2;
  @JsonKey(ignore: true)
  _$$_SwapCopyWith<_$_Swap> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectCurrencyCopyWith<$Res> {
  factory _$$_SelectCurrencyCopyWith(
          _$_SelectCurrency value, $Res Function(_$_SelectCurrency) then) =
      __$$_SelectCurrencyCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> codes, CurrencyFields field});
}

/// @nodoc
class __$$_SelectCurrencyCopyWithImpl<$Res>
    extends _$ConvertingStateCopyWithImpl<$Res, _$_SelectCurrency>
    implements _$$_SelectCurrencyCopyWith<$Res> {
  __$$_SelectCurrencyCopyWithImpl(
      _$_SelectCurrency _value, $Res Function(_$_SelectCurrency) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codes = null,
    Object? field = null,
  }) {
    return _then(_$_SelectCurrency(
      codes: null == codes
          ? _value._codes
          : codes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as CurrencyFields,
    ));
  }
}

/// @nodoc

class _$_SelectCurrency implements _SelectCurrency {
  const _$_SelectCurrency(
      {required final List<String> codes, required this.field})
      : _codes = codes;

  final List<String> _codes;
  @override
  List<String> get codes {
    if (_codes is EqualUnmodifiableListView) return _codes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_codes);
  }

  @override
  final CurrencyFields field;

  @override
  String toString() {
    return 'ConvertingState.selectCurrency(codes: $codes, field: $field)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectCurrency &&
            const DeepCollectionEquality().equals(other._codes, _codes) &&
            (identical(other.field, field) || other.field == field));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_codes), field);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectCurrencyCopyWith<_$_SelectCurrency> get copyWith =>
      __$$_SelectCurrencyCopyWithImpl<_$_SelectCurrency>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Money money1, Money money2) data,
    required TResult Function(Money money1, Money money2) swap,
    required TResult Function(List<String> codes, CurrencyFields field)
        selectCurrency,
  }) {
    return selectCurrency(codes, field);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Money money1, Money money2)? data,
    TResult? Function(Money money1, Money money2)? swap,
    TResult? Function(List<String> codes, CurrencyFields field)? selectCurrency,
  }) {
    return selectCurrency?.call(codes, field);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Money money1, Money money2)? data,
    TResult Function(Money money1, Money money2)? swap,
    TResult Function(List<String> codes, CurrencyFields field)? selectCurrency,
    required TResult orElse(),
  }) {
    if (selectCurrency != null) {
      return selectCurrency(codes, field);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_Swap value) swap,
    required TResult Function(_SelectCurrency value) selectCurrency,
  }) {
    return selectCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data value)? data,
    TResult? Function(_Swap value)? swap,
    TResult? Function(_SelectCurrency value)? selectCurrency,
  }) {
    return selectCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Swap value)? swap,
    TResult Function(_SelectCurrency value)? selectCurrency,
    required TResult orElse(),
  }) {
    if (selectCurrency != null) {
      return selectCurrency(this);
    }
    return orElse();
  }
}

abstract class _SelectCurrency implements ConvertingState {
  const factory _SelectCurrency(
      {required final List<String> codes,
      required final CurrencyFields field}) = _$_SelectCurrency;

  List<String> get codes;
  CurrencyFields get field;
  @JsonKey(ignore: true)
  _$$_SelectCurrencyCopyWith<_$_SelectCurrency> get copyWith =>
      throw _privateConstructorUsedError;
}
