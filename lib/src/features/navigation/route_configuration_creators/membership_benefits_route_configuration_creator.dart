import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_savior/src/features/membership_benefits/membership_benefits_screen.dart';
import 'package:hotel_savior/src/features/navigation/navigation_key_container/navigation_key_container.dart';
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/base_route_configuration_creator.dart';
import 'package:hotel_savior/src/features/navigation/transitions/shared_axis_animated_transition.dart';
import 'package:injectable/injectable.dart';

@injectable
class MembershipBenefitsRouteConfigurationCreator
    extends BaseRouteConfigurationCreator {
  MembershipBenefitsRouteConfigurationCreator(this._rootNavigationKeyContainer);

  final RootNavigationKeyContainer _rootNavigationKeyContainer;

  @override
  GoRouterPageBuilder? get pageBuilder =>
      (context, state) => const SharedAxisAnimatedTransition(
            axis: SharedAxisTransitionType.scaled,
          ).buildPage(
            context,
            state,
            (_, __) => const MembershipBenefitsScreen(),
          );

  @override
  GlobalKey<NavigatorState>? get parentNavigatorKey =>
      _rootNavigationKeyContainer.key;
}
