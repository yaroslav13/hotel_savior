import 'package:animations/animations.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_savior/src/features/explore/entities/explore_category.dart';
import 'package:hotel_savior/src/features/navigation/navigation_key_container/navigation_key_container.dart';
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/base_route_configuration_creator.dart';
import 'package:hotel_savior/src/features/navigation/transitions/shared_axis_animated_transition.dart';
import 'package:hotel_savior/src/features/services_location_visualizer/services_location_visualizer_screen.dart';
import 'package:injectable/injectable.dart';

@injectable
class ServiceLocationVisualizerRouteConfigurationCreator
    extends BaseRouteConfigurationCreator {
  ServiceLocationVisualizerRouteConfigurationCreator(
    this._rootNavigationKeyContainer,
  );

  final RootNavigationKeyContainer _rootNavigationKeyContainer;

  @override
  GoRouterPageBuilder? get pageBuilder =>
      (context, state) => const SharedAxisAnimatedTransition(
            axis: SharedAxisTransitionType.scaled,
          ).buildPage(
            context,
            state,
            (_, state) {
              //ignore: avoid-non-null-assertion
              final category = state.extra! as ExploreCategory;

              return ServicesLocationVisualizerScreen(
                category: category,
              );
            },
          );

  @override
  GlobalKey<NavigatorState>? get parentNavigatorKey =>
      _rootNavigationKeyContainer.key;
}
