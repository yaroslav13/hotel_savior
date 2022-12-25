import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_savior/features/navigation/app_routes.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppRouter {
  late final config = GoRouter(
    debugLogDiagnostics: true,
    routes: _composeRoutes(),
  );

  List<RouteBase> _composeRoutes() => [
        GoRoute(
          path: AppRoutes.splash.path,
          name: AppRoutes.splash.designation,

          ///TODO: Replace with real screen
          builder: (_, __) => const SizedBox.shrink(),
        ),
      ];
}
