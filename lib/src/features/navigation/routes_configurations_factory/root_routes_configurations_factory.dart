import 'package:go_router/go_router.dart';
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/auth_route_configuration_creator.dart';
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/explore_route_configuration_creator.dart';
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/home_route_configuration_creator.dart';
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/profile_route_configuration_creator.dart';
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/qr_code_route_configuration_creator.dart';
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/splash_route_configuration_creator.dart';
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/updates_route_configuration_creator.dart';
import 'package:hotel_savior/src/features/navigation/routes/app_root_routes.dart';
import 'package:hotel_savior/src/features/navigation/routes_configurations_factory/routes_configurations_factory.dart';
import 'package:injectable/injectable.dart';

@injectable
class RootRoutesConfigurationsFactory extends RoutesConfigurationsFactory {
  RootRoutesConfigurationsFactory(
    this._splashRouteConfigurationCreator,
    this._authRouteConfigurationCreator,
    this._homeRouteConfigurationCreator,
    this._qrCodeRouteConfigurationCreator,
    this._updatesRouteConfigurationCreator,
    this._profileRouteConfigurationCreator,
    this._exploreRouteConfigurationCreator,
  );

  final SplashRouteConfigurationCreator _splashRouteConfigurationCreator;
  final AuthRouteConfigurationCreator _authRouteConfigurationCreator;
  final HomeRouteConfigurationCreator _homeRouteConfigurationCreator;
  final QrCodeRouteConfigurationCreator _qrCodeRouteConfigurationCreator;
  final UpdatesRouteConfigurationCreator _updatesRouteConfigurationCreator;
  final ProfileRouteConfigurationCreator _profileRouteConfigurationCreator;
  final ExploreRouteConfigurationCreator _exploreRouteConfigurationCreator;

  @override
  RouteBase create(
    covariant AppRootRoutes root, {
    List<RouteBase> routes = const [],
  }) {
    return switch (root) {
      AppRootRoutes.splash => _splashRouteConfigurationCreator(
          root,
          routes: routes,
        ),
      AppRootRoutes.home =>
        _homeRouteConfigurationCreator(root, routes: routes),
      AppRootRoutes.login =>
        _authRouteConfigurationCreator(root, routes: routes),
      AppRootRoutes.qrCode => _qrCodeRouteConfigurationCreator(
          root,
          routes: routes,
        ),
      AppRootRoutes.updates => _updatesRouteConfigurationCreator(
          root,
          routes: routes,
        ),
      AppRootRoutes.profile => _profileRouteConfigurationCreator(
          root,
          routes: routes,
        ),
      AppRootRoutes.explore => _exploreRouteConfigurationCreator(
          root,
          routes: routes,
        ),
    };
  }
}
