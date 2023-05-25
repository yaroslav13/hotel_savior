import 'package:flutter/material.dart';
import 'package:hotel_savior/src/features/navigation/transitions/animated_transition.dart';
import 'package:hotel_savior/src/features/navigation/transitions/page_transitions_constants.dart';

class ScaleAnimatedTransition extends AnimatedTransition {
  const ScaleAnimatedTransition({
    this.alignment = Alignment.center,
    this.curve = Curves.fastOutSlowIn,
    this.transitionDuration = PageTransitionConstants.transitionDuration,
    this.reverseTransitionDuration = PageTransitionConstants.transitionDuration,
    this.reverseCurve,
  });

  final Alignment alignment;

  final Curve curve;
  final Curve? reverseCurve;

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
    return ScaleTransition(
      scale: CurvedAnimation(
        parent: animation,
        curve: curve,
        reverseCurve: reverseCurve,
      ),
      alignment: alignment,
      child: child,
    );
  }
}
