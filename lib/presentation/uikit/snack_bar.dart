import 'package:converter/presentation/router/router.dart';
import 'package:flutter/material.dart';

void showErrorSnackBar(Object? message) {
  ScaffoldMessenger.of(navContext).showSnackBar(
    SnackBar(
      content: Text('$message'),
      backgroundColor: Theme.of(navContext).colorScheme.error,
    ),
  );
}
