import 'package:go_router/go_router.dart';
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/hotel_service_details_route_configuration_creator.dart';
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/membership_activation_route_configuration_creator.dart';
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/membership_benefits_route_configuration_creator.dart';
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/registration_route_configuration_creator.dart';
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/services_location_visualizer_route_configuration_creator.dart';
import 'package:hotel_savior/src/features/navigation/routes/app_sub_routes.dart';
import 'package:hotel_savior/src/features/navigation/routes_configurations_factory/routes_configurations_factory.dart';
import 'package:injectable/injectable.dart';

@injectable
class SubRoutesConfigurationsFactory extends RoutesConfigurationsFactory {
  SubRoutesConfigurationsFactory(
    this._registrationRouteConfigurationCreator,
    this._membershipActivationRouteConfigurationCreator,
    this._membershipBenefitsRouteConfigurationCreator,
    this._serviceLocationVisualizerRouteConfigurationCreator,
    this._hotelServiceDetailsRouteConfigurationCreator,
  );

  final RegistrationRouteConfigurationCreator
      _registrationRouteConfigurationCreator;
  final MembershipActivationRouteConfigurationCreator
      _membershipActivationRouteConfigurationCreator;
  final MembershipBenefitsRouteConfigurationCreator
      _membershipBenefitsRouteConfigurationCreator;
  final ServiceLocationVisualizerRouteConfigurationCreator
      _serviceLocationVisualizerRouteConfigurationCreator;
  final HotelServiceDetailsRouteConfigurationCreator
      _hotelServiceDetailsRouteConfigurationCreator;

  @override
  RouteBase create(
    covariant AppSubRoutes root, {
    List<RouteBase> routes = const [],
  }) {
    return switch (root) {
      AppSubRoutes.registration => _registrationRouteConfigurationCreator(
          root,
          routes: routes,
        ),
      AppSubRoutes.membershipActivation =>
        _membershipActivationRouteConfigurationCreator(
          root,
          routes: routes,
        ),
      AppSubRoutes.membershipBenefits =>
        _membershipBenefitsRouteConfigurationCreator(
          root,
          routes: routes,
        ),
      AppSubRoutes.servicesLocationVisualizer =>
        _serviceLocationVisualizerRouteConfigurationCreator(
          root,
          routes: routes,
        ),
      AppSubRoutes.hotelServiceDetails =>
        _hotelServiceDetailsRouteConfigurationCreator(
          root,
          routes: routes,
        ),
    };
  }
}
