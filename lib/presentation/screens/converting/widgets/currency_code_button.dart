import 'package:converter/domain/currency_rates/model/currency_rate.dart';
import 'package:converter/presentation/screens/converting/bloc/converting_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencyCodeButton extends StatelessWidget {
  const CurrencyCodeButton({
    super.key,
    required this.field,
  });

  final CurrencyFields field;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocSelector<ConvertingBloc, ConvertingState, CurrencyCode>(
          selector: (state) {
            final code = state.mapOrNull(
              data: (state) {
                switch (field) {
                  case CurrencyFields.first:
                    return state.money1.currencyCode;
                  case CurrencyFields.second:
                    return state.money2.currencyCode;
                }
              },
            );
            return code ?? '';
          },
          builder: (context, state) {
            return Text(
              state,
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
            );
          },
        ),
        IconButton(
          onPressed: () {
            context.read<ConvertingBloc>().add(
                  ConvertingEvent.shouldSelectCurrency(field),
                );
          },
          icon: const Icon(Icons.keyboard_arrow_down_sharp),
        ),
      ],
    );
  }
}
