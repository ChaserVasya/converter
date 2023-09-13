import 'package:auto_route/auto_route.dart';
import 'package:converter/presentation/screens/converting/screen.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'router.gr.dart';

final navContext = _navigatorKey.currentContext!;
final _navigatorKey = GlobalKey<NavigatorState>();

@lazySingleton
@AutoRouterConfig(replaceInRouteName: 'Page|Screen|Tab,Route')
class AppRouter extends _$AppRouter {
  AppRouter() : super(navigatorKey: _navigatorKey);

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: ConvertingRoute.page, initial: true),
      ];
}
