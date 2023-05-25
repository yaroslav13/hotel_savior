import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_savior/src/features/navigation/transitions/page_transitions_constants.dart';

@immutable
abstract class AnimatedTransition {
  const AnimatedTransition();

  Duration get transitionDuration => PageTransitionConstants.transitionDuration;

  Duration get reverseTransitionDuration =>
      PageTransitionConstants.transitionDuration;

  bool get maintainState => true;

  bool get fullscreenDialog => false;

  bool get opaque => true;

  bool get barrierDismissible => false;

  Color? get barrierColor => null;

  String? get barrierLabel => null;

  String? get name => null;

  Object? get arguments => null;

  Widget buildTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  );

  Page<dynamic> buildPage(
    BuildContext context,
    GoRouterState state,
    GoRouterWidgetBuilder widgetBuilder,
  ) {
    final pageKey = state.pageKey;

    return CustomTransitionPage<dynamic>(
      key: pageKey,
      restorationId: pageKey.value,
      transitionDuration: transitionDuration,
      reverseTransitionDuration: reverseTransitionDuration,
      maintainState: maintainState,
      fullscreenDialog: fullscreenDialog,
      opaque: opaque,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      name: name,
      arguments: arguments,
      child: widgetBuilder(context, state),
      transitionsBuilder: buildTransition,
    );
  }
}
