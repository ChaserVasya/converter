part of 'converting_bloc.dart';

@freezed
class ConvertingState with _$ConvertingState {
  const factory ConvertingState.data({
    @Default(Money()) Money money1,
    @Default(Money()) Money money2,
  }) = _Data;
  const factory ConvertingState.swap({
    required Money money1,
    required Money money2,
  }) = _Swap;
  const factory ConvertingState.selectCurrency({
    required List<CurrencyCode> codes,
    required CurrencyFields field,
  }) = _SelectCurrency;
}
