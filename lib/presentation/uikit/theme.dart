import 'package:flutter/material.dart';

final theme = () {
  final colorScheme = ColorScheme.fromSeed(
    seedColor: Colors.deepPurple,
  ).copyWith(
    secondary: Colors.greenAccent,
  );

  return ThemeData(
    colorScheme: colorScheme,
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: colorScheme.secondary),
      ),
    ),
    iconTheme: IconThemeData(
      color: colorScheme.primary,
    ),
  );
}();
