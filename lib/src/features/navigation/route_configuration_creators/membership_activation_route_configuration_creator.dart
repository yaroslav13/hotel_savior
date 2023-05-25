import 'package:animations/animations.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_savior/src/features/membership_activation/membership_activation_screen.dart';
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/base_route_configuration_creator.dart';
import 'package:hotel_savior/src/features/navigation/transitions/shared_axis_animated_transition.dart';
import 'package:injectable/injectable.dart';

@injectable
class MembershipActivationRouteConfigurationCreator
    extends BaseRouteConfigurationCreator {
  @override
  GoRouterPageBuilder? get pageBuilder =>
      (context, state) => const SharedAxisAnimatedTransition(
            axis: SharedAxisTransitionType.horizontal,
          ).buildPage(
            context,
            state,
            (_, __) => const MembershipActivationScreen(),
          );
}
