part of 'converting_bloc.dart';

@freezed
class ConvertingEvent with _$ConvertingEvent {
  const factory ConvertingEvent.valueChanged({
    required TextFields field,
    required double newValue,
  }) = _ValueChanged;
  const factory ConvertingEvent.currencySelected({
    required TextFields field,
    required CurrencyCode newCode,
  }) = _CurrencySelected;
  const factory ConvertingEvent.swap() = _SwapEvent;
  const factory ConvertingEvent.refresh() = _Refresh;
  const factory ConvertingEvent.shouldSelectCurrency(
    TextFields field,
  ) = _ShouldSelectCurrency;
}

enum TextFields {
  first,
  second,
}
