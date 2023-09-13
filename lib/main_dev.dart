import 'package:converter/internal/app.dart';
import 'package:converter/internal/di/di.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

void main() async {
  await configureDependencies(Environment.dev);
  runApp(const App());
}
