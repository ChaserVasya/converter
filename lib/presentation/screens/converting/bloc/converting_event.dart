part of 'converting_bloc.dart';

@freezed
class ConvertingEvent with _$ConvertingEvent {
  const factory ConvertingEvent.valueChanged({
    required CurrencyFields field,
    required double newValue,
  }) = _ValueChanged;

  const factory ConvertingEvent.currencySelected({
    required CurrencyFields field,
    required CurrencyCode newCode,
  }) = _CurrencySelected;

  const factory ConvertingEvent.swap() = _SwapEvent;

  const factory ConvertingEvent.refresh(
    CurrencyFields field,
  ) = _Refresh;

  const factory ConvertingEvent.shouldSelectCurrency(
    CurrencyFields field,
  ) = _ShouldSelectCurrency;
}

enum CurrencyFields {
  first,
  second,
}
