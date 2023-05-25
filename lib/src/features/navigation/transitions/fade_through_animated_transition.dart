import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:hotel_savior/src/features/navigation/transitions/animated_transition.dart';
import 'package:hotel_savior/src/features/navigation/transitions/page_transitions_constants.dart';


class FadeThroughAnimatedTransition extends AnimatedTransition {
  const FadeThroughAnimatedTransition({
    this.transitionDuration = PageTransitionConstants.transitionDuration,
    this.reverseTransitionDuration = PageTransitionConstants.transitionDuration,
    this.fillColor,
  });

  ///The color to use for the background color during the transition.
  final Color? fillColor;

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
    return FadeThroughTransition(
      animation: animation,
      secondaryAnimation: secondaryAnimation,
      fillColor: fillColor,
      child: child,
    );
  }
}
