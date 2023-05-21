import 'package:go_router/go_router.dart';
import 'package:hotel_savior/src/features/navigation/routes/app_root_routes.dart';
import 'package:hotel_savior/src/features/navigation/routes/app_sub_routes.dart';
import 'package:hotel_savior/src/features/navigation/routes_configurations_factory/root_routes_configurations_factory.dart';
import 'package:hotel_savior/src/features/navigation/routes_configurations_factory/sub_routes_configurations_factory.dart';
import 'package:injectable/injectable.dart';

@injectable
class RoutesTreeBuilder {
  RoutesTreeBuilder(
    this._rootRoutesConfigurationsFactory,
    this._subRoutesConfigurationsFactory,
  );

  final RootRoutesConfigurationsFactory _rootRoutesConfigurationsFactory;
  final SubRoutesConfigurationsFactory _subRoutesConfigurationsFactory;

  RouteBase call(AppRootRoutes root) {
    final subRoutesConfigurations = AppSubRoutes.values
        .where((route) => route.roots.contains(root))
        .map(_buildSubRoutesTreeRecursively)
        .toList();

    return _rootRoutesConfigurationsFactory.create(
      root,
      routes: subRoutesConfigurations,
    );
  }

  RouteBase _buildSubRoutesTreeRecursively(AppSubRoutes route) {
    final subRoutes = AppSubRoutes.values.where(
      (subRoute) => subRoute.roots.contains(route),
    );

    if (subRoutes.isEmpty) {
      return _subRoutesConfigurationsFactory.create(route);
    }

    final subRoutesConfigurations =
        subRoutes.map(_buildSubRoutesTreeRecursively).toList();

    return _subRoutesConfigurationsFactory.create(
      route,
      routes: subRoutesConfigurations,
    );
  }
}



