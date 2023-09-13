import 'package:auto_route/auto_route.dart';
import 'package:converter/domain/currency/formatters.dart';
import 'package:converter/domain/currency/validator.dart';
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
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Currency converter'),
        ),
        body: SingleChildScrollView(
          child: BlocConsumer<ConvertingBloc, ConvertingState>(
            listener: (context, state) {
              state.whenOrNull(selectCurrency: (codes, field) async {
                final bloc = context.read<ConvertingBloc>();
                final result = await showCurrencySelectionDialog(codes);
                if (result == null) return;
                bloc.add(ConvertingEvent.currencySelected(
                  field: field,
                  newCode: result,
                ));
              }, swap: (money1, money2) {
                if (money2.value != null) {
                  controller2.text = money2.value!.toStringAsFixed(4);
                }
                if (money1.value != null) {
                  controller1.text = money1.value!.toStringAsFixed(4);
                }
              }, data: (money1, money2) {
                if (money2.value != null) {
                  controller2.text = money2.value!.toStringAsFixed(4);
                }
              });
            },
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('You send'),
                    Row(
                      children: [
                        Flexible(
                          child: TextFormField(
                            key: fieldKey1,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: controller1,
                            onChanged: (str) {
                              final isValid =
                                  fieldKey1.currentState!.validate();
                              if (!isValid) return;
                              context.read<ConvertingBloc>().add(
                                    ConvertingEvent.valueChanged(
                                      field: TextFields.first,
                                      newValue: double.parse(str),
                                    ),
                                  );
                            },
                            keyboardType: const TextInputType.numberWithOptions(
                                decimal: true),
                            inputFormatters: currencyFormatters,
                            validator: currencyValidator,
                          ),
                        ),
                        const CurrencyCodeButton(
                          field: TextFields.first,
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
                    const Text('They get'),
                    Row(
                      children: [
                        Flexible(
                          child: TextFormField(
                            readOnly: true,
                            controller: controller2,
                            inputFormatters: currencyFormatters,
                          ),
                        ),
                        const CurrencyCodeButton(
                          field: TextFields.second,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
