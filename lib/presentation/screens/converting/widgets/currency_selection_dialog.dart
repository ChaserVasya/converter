import 'package:auto_route/auto_route.dart';
import 'package:converter/domain/currency_rates/models/currency_rate/currency_rate.dart';

import 'package:converter/presentation/router/router.dart';
import 'package:flutter/material.dart';

Future<CurrencyCode?> showCurrencySelectionDialog(List<CurrencyCode> codes) {
  return showDialog(
    context: navContext,
    builder: (context) {
      return CurrencySelectionDialogBody(codes: codes);
    },
  );
}

class CurrencySelectionDialogBody extends StatefulWidget {
  const CurrencySelectionDialogBody({super.key, required this.codes});

  final List<CurrencyCode> codes;

  @override
  State<CurrencySelectionDialogBody> createState() =>
      _CurrencySelectionDialogBodyState();
}

class _CurrencySelectionDialogBodyState
    extends State<CurrencySelectionDialogBody> {
  CurrencyCode? curCode;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Choose a currency'),
      actions: [
        TextButton(
          onPressed: context.router.pop,
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => context.router.pop(curCode),
          child: const Text('Ok'),
        ),
      ],
      content: SingleChildScrollView(
        child: Column(
          children: [
            for (final code in widget.codes)
              RadioListTile(
                value: code,
                title: Text(code),
                groupValue: curCode,
                onChanged: (code) {
                  setState(() {
                    curCode = code;
                  });
                },
              ),
          ],
        ),
      ),
    );
    ;
  }
}
