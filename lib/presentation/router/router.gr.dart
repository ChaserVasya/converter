// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ConvertingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ConvertingScreen(),
      );
    }
  };
}

/// generated route for
/// [ConvertingScreen]
class ConvertingRoute extends PageRouteInfo<void> {
  const ConvertingRoute({List<PageRouteInfo>? children})
      : super(
          ConvertingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConvertingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
