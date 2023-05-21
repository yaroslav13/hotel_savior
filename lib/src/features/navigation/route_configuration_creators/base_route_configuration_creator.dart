import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_savior/src/features/navigation/routes/base/base_route.dart';

abstract class BaseRouteConfigurationCreator {
  GoRoute call(
    BaseRoute root, {
    List<RouteBase> routes = const [],
  }) =>
      GoRoute(
        name: root.routeName,
        path: root.path,
        routes: routes,
        builder: builder,
        parentNavigatorKey: parentNavigatorKey,
        redirect: redirect,
        pageBuilder: pageBuilder,
      );

  GoRouterWidgetBuilder? get builder => null;

  GoRouterRedirect? get redirect => null;

  GlobalKey<NavigatorState>? get parentNavigatorKey => null;

  GoRouterPageBuilder? get pageBuilder => null;
}
