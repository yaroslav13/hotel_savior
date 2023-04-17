import 'package:go_router/go_router.dart';
import 'package:hotel_savior/src/features/navigation/routes/base/base_route.dart';

abstract class RoutesConfigurationsFactory {
  RouteBase create(
    BaseRoute root, {
    List<RouteBase> routes = const [],
  });
}
