import 'package:go_router/go_router.dart';
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/registration_route_configuration_creator.dart';
import 'package:hotel_savior/src/features/navigation/routes/app_sub_routes.dart';
import 'package:hotel_savior/src/features/navigation/routes_configurations_factory/routes_configurations_factory.dart';
import 'package:injectable/injectable.dart';

@injectable
class SubRoutesConfigurationsFactory extends RoutesConfigurationsFactory {
  SubRoutesConfigurationsFactory(this._registrationRouteConfigurationCreator);

  final RegistrationRouteConfigurationCreator
      _registrationRouteConfigurationCreator;

  @override
  RouteBase create(
    covariant AppSubRoutes root, {
    List<RouteBase> routes = const [],
  }) {
    switch (root) {
      case AppSubRoutes.registration:
        return _registrationRouteConfigurationCreator(root, routes: routes);
    }
  }
}
