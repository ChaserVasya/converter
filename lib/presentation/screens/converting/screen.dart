import 'package:auto_route/auto_route.dart';
import 'package:converter/domain/money/formatters.dart';
import 'package:converter/domain/money/validator.dart';
import 'package:converter/internal/di/di.dart';
import 'package:converter/presentation/screens/converting/bloc/converting_bloc.dart';
import 'package:converter/presentation/screens/converting/widgets/currency_code_button.dart';
import 'package:converter/presentation/screens/converting/widgets/currency_selection_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ConvertingScreen extends StatefulWidget {
  const ConvertingScreen({super.key});

  @override
  State<ConvertingScreen> createState() => _ConvertingScreenState();
}

class _ConvertingScreenState extends State<ConvertingScreen> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();

  final fieldKey1 = GlobalKey<FormFieldState>();
  final fieldKey2 = GlobalKey<FormFieldState>();

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ConvertingBloc>(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Currency converter'),
            ),
            body: BlocListener<ConvertingBloc, ConvertingState>(
              listener: _listenMethods,
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: TextFormField(
                          key: fieldKey1,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: controller1,
                          inputFormatters: currencyFormatters,
                          validator: currencyValidator,
                          decoration: const InputDecoration(
                            labelText: 'You send',
                          ),
                          onChanged: (str) {
                            final isValid = fieldKey1.currentState!.validate();
                            if (!isValid) return;
                            context.read<ConvertingBloc>().add(
                                  ConvertingEvent.valueChanged(
                                    field: CurrencyFields.first,
                                    newValue: double.parse(str),
                                  ),
                                );
                          },
                          keyboardType: const TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                        ),
                      ),
                      const CurrencyCodeButton(
                        field: CurrencyFields.first,
                      ),
                    ],
                  ),
                  Center(
                    child: IconButton(
                      onPressed: () {
                        context
                            .read<ConvertingBloc>()
                            .add(const ConvertingEvent.swap());
                      },
                      icon: const Icon(Icons.swap_vert_outlined),
                    ),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: TextFormField(
                          key: fieldKey2,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: controller2,
                          inputFormatters: currencyFormatters,
                          validator: currencyValidator,
                          decoration: const InputDecoration(
                            labelText: 'They get',
                          ),
                          onChanged: (str) {
                            final isValid = fieldKey2.currentState!.validate();
                            if (!isValid) return;
                            context.read<ConvertingBloc>().add(
                                  ConvertingEvent.valueChanged(
                                    field: CurrencyFields.second,
                                    newValue: double.parse(str),
                                  ),
                                );
                          },
                        ),
                      ),
                      const CurrencyCodeButton(
                        field: CurrencyFields.second,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _listenMethods(BuildContext context, ConvertingState state) {
    state.whenOrNull(
      selectCurrency: (codes, field) async {
        final bloc = context.read<ConvertingBloc>();
        final result = await showCurrencySelectionDialog(codes);
        if (result == null) return;
        bloc.add(ConvertingEvent.currencySelected(
          field: field,
          newCode: result,
        ));
      },
      swap: (money1, money2) {
        controller2.text = money2.value?.toStringAsFixed(4) ?? '';
        controller1.text = money1.value?.toStringAsFixed(4) ?? '';
      },
      refreshed: (money, field) {
        final value = money.value?.toStringAsFixed(4);
        if (value == null) return null;
        return switch (field) {
          CurrencyFields.first => controller1.text = value,
          CurrencyFields.second => controller2.text = value,
        };
      },
    );
  }
}
