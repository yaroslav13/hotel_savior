import 'package:flutter/material.dart';
import 'package:hotel_savior/src/features/navigation/transitions/animated_transition.dart';
import 'package:hotel_savior/src/features/navigation/transitions/page_transitions_constants.dart';


class SlideAnimatedTransition extends AnimatedTransition {
  const SlideAnimatedTransition({
    this.begin = const Offset(0, 1),
    this.end = Offset.zero,
    this.curve = Curves.easeIn,
    this.transitionDuration = PageTransitionConstants.transitionDuration,
    this.reverseTransitionDuration = PageTransitionConstants.transitionDuration,
  });

  final Offset begin;
  final Offset end;

  final Curve curve;

  @override
  final Duration transitionDuration;
  @override
  final Duration reverseTransitionDuration;

  @override
  Widget buildTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: animation.drive(
        Tween<Offset>(
          begin: begin,
          end: end,
        ).chain(
          CurveTween(curve: curve),
        ),
      ),
      child: child,
    );
  }
}
