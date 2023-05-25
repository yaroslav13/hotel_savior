import 'package:hotel_savior/src/features/navigation/routes/app_root_routes.dart';
import 'package:hotel_savior/src/features/navigation/routes/base/base_route.dart';
import 'package:hotel_savior/src/features/navigation/routes/base/base_sub_route.dart';

enum AppSubRoutes implements BaseSubRoute {
  registration(nameOrNull: 'registration', path: 'registration'),
  membershipBenefits(
    nameOrNull: 'membership_benefits',
    path: 'membership_benefits',
  ),
  servicesLocationVisualizer(
    nameOrNull: 'services_location_visualizer',
    path: 'services_location_visualizer',
  ),
  hotelServiceDetails(
    nameOrNull: 'hotel_service_details',
    path: 'hotel_service_details',
  ),
  membershipActivation(
    nameOrNull: 'membership_activation',
    path: 'membership_activation',
  );

  const AppSubRoutes({
    required this.path,
    this.nameOrNull,
  });

  @override
  final String path;

  final String? nameOrNull;

  @override
  String get routeName {
    final nameOrNull = this.nameOrNull;
    assert(nameOrNull != null, '$this is unnamed route');

    //ignore: avoid-non-null-assertion
    return nameOrNull!;
  }

  @override
  List<BaseRoute> get roots {
    return switch (this) {
      AppSubRoutes.registration => [AppRootRoutes.login],
      AppSubRoutes.membershipActivation => [AppRootRoutes.home],
      AppSubRoutes.membershipBenefits => [AppRootRoutes.home],
      AppSubRoutes.servicesLocationVisualizer => [AppRootRoutes.explore],
      AppSubRoutes.hotelServiceDetails => [AppRootRoutes.home],
    };
  }

  @override
  int compareTo(BaseRoute other) => path.compareTo(other.path);
}
