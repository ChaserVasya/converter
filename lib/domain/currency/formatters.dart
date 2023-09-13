import 'package:flutter/services.dart';

final currencyFormatters = [
  FilteringTextInputFormatter.singleLineFormatter,
  FilteringTextInputFormatter.deny(RegExp(r'\s'))
];
