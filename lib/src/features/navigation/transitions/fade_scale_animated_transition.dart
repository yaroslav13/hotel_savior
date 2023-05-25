import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:hotel_savior/src/features/navigation/transitions/animated_transition.dart';

class FadeScaleAnimatedTransition extends AnimatedTransition {
  const FadeScaleAnimatedTransition({
    this.transitionDuration = const Duration(milliseconds: 150),
    this.reverseTransitionDuration = const Duration(milliseconds: 75),
  });

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
    return FadeScaleTransition(
      animation: animation,
      child: child,
    );
  }
}
