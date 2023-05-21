import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/base_route_configuration_creator.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeRouteConfigurationCreator extends BaseRouteConfigurationCreator {
  @override
  GoRouterWidgetBuilder? get builder => (_, __) => const Placeholder();
}
