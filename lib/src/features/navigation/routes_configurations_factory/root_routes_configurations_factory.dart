import 'package:go_router/go_router.dart';
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/auth_route_configuration_creator.dart';
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/home_route_configuration_creator.dart';
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/splash_route_configuration_creator.dart';
import 'package:hotel_savior/src/features/navigation/routes/app_root_routes.dart';
import 'package:hotel_savior/src/features/navigation/routes_configurations_factory/routes_configurations_factory.dart';
import 'package:injectable/injectable.dart';

@injectable
class RootRoutesConfigurationsFactory extends RoutesConfigurationsFactory {
  RootRoutesConfigurationsFactory(
    this._splashRouteConfigurationCreator,
    this._authRouteConfigurationCreator,
    this._homeRouteConfigurationCreator,
  );

  final SplashRouteConfigurationCreator _splashRouteConfigurationCreator;
  final AuthRouteConfigurationCreator _authRouteConfigurationCreator;
  final HomeRouteConfigurationCreator _homeRouteConfigurationCreator;

  @override
  RouteBase create(
    covariant AppRootRoutes root, {
    List<RouteBase> routes = const [],
  }) {
    switch (root) {
      case AppRootRoutes.splash:
        return _splashRouteConfigurationCreator(root, routes: routes);
      case AppRootRoutes.home:
        return _homeRouteConfigurationCreator(root, routes: routes);
      case AppRootRoutes.login:
        return _authRouteConfigurationCreator(root, routes: routes);
    }
  }
}
