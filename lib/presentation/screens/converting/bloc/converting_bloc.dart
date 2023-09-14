import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:converter/domain/currency_rates/converter.dart';
import 'package:converter/domain/currency_rates/model/currency_rate.dart';
import 'package:converter/domain/currency_rates/repo.dart';
import 'package:converter/domain/money/model/money.dart';
import 'package:converter/utils/bloc_debounce.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'converting_bloc.freezed.dart';
part 'converting_event.dart';
part 'converting_state.dart';

@injectable
class ConvertingBloc extends Bloc<ConvertingEvent, ConvertingState> {
  ConvertingBloc(this._converter, this._repo)
      : super(const ConvertingState.data()) {
    on<_ValueChanged>(
      _onValueChanged,
      transformer: debounceSequential(const Duration(milliseconds: 500)),
    );
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
      case CurrencyFields.first:
        emit(state.copyWith.money1(
          value: event.newValue,
        ));
        add(const _Refresh(CurrencyFields.second));
      case CurrencyFields.second:
        emit(state.copyWith.money2(
          value: event.newValue,
        ));
        add(const _Refresh(CurrencyFields.first));
    }
  }

  FutureOr<void> _onCurrencySelected(
    _CurrencySelected event,
    Emitter<ConvertingState> emit,
  ) async {
    final state = _ensureDataState();
    switch (event.field) {
      case CurrencyFields.first:
        emit(state.copyWith.money1(
          currencyCode: event.newCode,
        ));
        add(const _Refresh(CurrencyFields.second));
      case CurrencyFields.second:
        emit(state.copyWith.money2(
          currencyCode: event.newCode,
        ));
        add(const _Refresh(CurrencyFields.first));
    }
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
    final money1 = curState.money1;
    final money2 = curState.money2;
    if (money2.currencyCode == null) return;
    if (money1.currencyCode == null) return;

    // По-умному смотрим что ещё не инициализировано
    if (money1.value == null && money2.value != null) {
      return _refreshFirst(curState, emit);
    } else if (money1.value != null && money2.value == null) {
      return _refreshSecond(curState, emit);
    }

    // Если все поля заполнены
    return switch (event.field) {
      CurrencyFields.first => _refreshFirst(curState, emit),
      CurrencyFields.second => _refreshSecond(curState, emit),
    };
  }

  Future<void> _refreshSecond(
      _Data curState, Emitter<ConvertingState> emit) async {
    final newMoney2 = await _converter.convert(
      curState.money1,
      curState.money2.currencyCode!,
    );
    emit(ConvertingState.refreshed(
      field: CurrencyFields.second,
      money: newMoney2,
    ));
    emit(curState.copyWith(
      money2: newMoney2,
    ));
  }

  Future<void> _refreshFirst(
      _Data curState, Emitter<ConvertingState> emit) async {
    final newMoney1 = await _converter.convert(
      curState.money2,
      curState.money1.currencyCode!,
    );
    emit(ConvertingState.refreshed(
      field: CurrencyFields.first,
      money: newMoney1,
    ));
    emit(curState.copyWith(
      money1: newMoney1,
    ));
  }

  _Data _ensureDataState() => state as _Data;
}
