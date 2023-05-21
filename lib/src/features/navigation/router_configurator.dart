import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_savior/src/features/navigation/navigation_key_container/navigation_key_container.dart';
import 'package:hotel_savior/src/features/navigation/routes/app_root_routes.dart';
import 'package:hotel_savior/src/features/navigation/routes_tree_builder.dart';
import 'package:injectable/injectable.dart';

const _navigationRestorationId = 'go-router-restoration';

@lazySingleton
class RouterConfigurator {
  RouterConfigurator(
    this._routesTreeBuilder,
    this._shellNavigationKeyContainer,
    this._rootNavigationKeyContainer,
  );

  final RoutesTreeBuilder _routesTreeBuilder;
  final ShellNavigationKeyContainer _shellNavigationKeyContainer;
  final RootNavigationKeyContainer _rootNavigationKeyContainer;

  late final config = GoRouter(
    initialLocation: AppRootRoutes.splash.path,
    restorationScopeId: _navigationRestorationId,
    navigatorKey: _rootNavigationKeyContainer.key,
    debugLogDiagnostics: true,
    routes: _defineRoutes(),
  );

  Iterable<AppRootRoutes> get _nestedRoutes =>
      AppRootRoutes.values.where((element) => element.nested);
  Iterable<AppRootRoutes> get _nonNestedRoutes => AppRootRoutes.values.where(
        (element) => !element.nested,
      );

  Widget Function(Widget child)? _buildShellRouteFoundation;

  void setShellRouteFoundation(Widget Function(Widget child) rootScreen) {
    assert(_nestedRoutes.isNotEmpty, 'Nested routes are empty.');
    _buildShellRouteFoundation = rootScreen;
  }

  List<RouteBase> _defineRoutes() {
    assert(
      _nestedRoutes.isEmpty || _buildShellRouteFoundation != null,
      'if nested routes exists than shell route foundation must be provided.',
    );

    return [
      if (_nestedRoutes.isNotEmpty)
        ShellRoute(
          navigatorKey: _shellNavigationKeyContainer.key,
          routes: _nestedRoutes.map<RouteBase>(_routesTreeBuilder).toList(),
          //ignore: avoid-non-null-assertion
          builder: (_, __, child) => _buildShellRouteFoundation!(child),
        ),
      ..._nonNestedRoutes.map(_routesTreeBuilder),
    ];
  }
}
