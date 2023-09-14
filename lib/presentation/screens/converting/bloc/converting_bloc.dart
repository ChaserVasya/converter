import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:converter/domain/currency_rates/converter.dart';
import 'package:converter/domain/currency_rates/models/currency_rate/currency_rate.dart';
import 'package:converter/domain/currency_rates/models/money/money.dart';
import 'package:converter/domain/currency_rates/repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'converting_bloc.freezed.dart';
part 'converting_event.dart';
part 'converting_state.dart';

@injectable
class ConvertingBloc extends Bloc<ConvertingEvent, ConvertingState> {
  ConvertingBloc(this._converter, this._repo)
      : super(const ConvertingState.data()) {
    on<_ValueChanged>(_onValueChanged);
    on<_CurrencySelected>(_onCurrencySelected);
    on<_SwapEvent>(_onSwap);
    on<_ShouldSelectCurrency>(_shouldSelectCurrency);
    on<_Refresh>(_onRefresh);
  }

  final CurrencyConverter _converter;
  final CurrencyRatesRepo _repo;

  FutureOr<void> _onValueChanged(
    _ValueChanged event,
    Emitter<ConvertingState> emit,
  ) {
    final state = _ensureDataState();
    switch (event.field) {
      case TextFields.first:
        emit(state.copyWith.money1(
          value: event.newValue,
        ));
      case TextFields.second:
        emit(state.copyWith.money2(
          value: event.newValue,
        ));
    }
    add(const _Refresh());
  }

  FutureOr<void> _onCurrencySelected(
    _CurrencySelected event,
    Emitter<ConvertingState> emit,
  ) async {
    final state = _ensureDataState();
    switch (event.field) {
      case TextFields.first:
        emit(state.copyWith.money1(
          currencyCode: event.newCode,
        ));
      case TextFields.second:
        emit(state.copyWith.money2(
          currencyCode: event.newCode,
        ));
    }
    add(const _Refresh());
  }

  FutureOr<void> _onSwap(_SwapEvent event, Emitter<ConvertingState> emit) {
    final curState = _ensureDataState();
    emit(ConvertingState.swap(
      money1: curState.money2,
      money2: curState.money1,
    ));
    emit(ConvertingState.data(
      money1: curState.money2,
      money2: curState.money1,
    ));
    add(const _Refresh());
  }

  FutureOr<void> _shouldSelectCurrency(
    _ShouldSelectCurrency event,
    Emitter<ConvertingState> emit,
  ) async {
    final oldState = state;
    final rates = await _repo.getAll();
    emit(ConvertingState.selectCurrency(
      codes: rates.keys.toList(),
      field: event.field,
    ));
    emit(oldState);
  }

  FutureOr<void> _onRefresh(
    _Refresh event,
    Emitter<ConvertingState> emit,
  ) async {
    final curState = _ensureDataState();
    if (curState.money1.currencyCode == null) return;
    if (curState.money1.value == null) return;
    if (curState.money2.currencyCode == null) return;
    final newMoney2 = await _converter.convert(
      curState.money1,
      curState.money2.currencyCode!,
    );
    emit(curState.copyWith(
      money2: newMoney2,
    ));
  }

  _Data _ensureDataState() => state as _Data;
}
