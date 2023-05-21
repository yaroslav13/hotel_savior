import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hotel_savior/src/features/extensions/build_context_colors_x.dart';

const _loaderDotSize = 6.0;
const _loaderPadding = 2.0;

const _minHeight = _loaderDotSize * 1.5;

class DotsLoaderIndicator extends StatefulWidget {
  const DotsLoaderIndicator({
    this.height,
    this.isExpanded = true,
    this.color,
    super.key,
  }) : assert(
          (height != null && !isExpanded) || (height == null),
          'Do not provide height when loader is expanded',
        );

  final double? height;
  final Color? color;

  final bool isExpanded;

  @override
  State<StatefulWidget> createState() => _DotsLoaderIndicatorState();
}

class _DotsLoaderIndicatorState extends State<DotsLoaderIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _loadingAnimation;

  void _initAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 275),
    );

    _loadingAnimation = Tween<double>(begin: 1, end: 1.5).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.ease,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _initAnimation();

    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loader = SizedBox(
      height: max(widget.height ?? 0, _minHeight),
      width: _loaderDotSize * 4 + _loaderPadding * 6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _LoaderDot(
            animation: _loadingAnimation,
            color: widget.color,
            opacitySubtract: 0.7,
          ),
          _LoaderDot(
            animation: _loadingAnimation,
            color: widget.color,
            opacitySubtract: 0.8,
            additionalSize: const Size.square(2.5),
          ),
          _LoaderDot(
            animation: _loadingAnimation,
            color: widget.color,
            opacitySubtract: 0.7,
          ),
        ],
      ),
    );

    return widget.isExpanded
        ? SizedBox.expand(
            child: loader,
          )
        : loader;
  }
}

class _LoaderDot extends StatelessWidget {
  const _LoaderDot({
    required this.animation,
    this.color,
    this.opacitySubtract = 0,
    this.additionalSize = const Size.square(0),
    
  });

  final Animation<double> animation;
  final Color? color;
  final double opacitySubtract;
  final Size additionalSize;

  @override
  Widget build(BuildContext context) {
    final loaderColor = color ?? context.colors.white;

    return AnimatedBuilder(
      animation: animation,
      builder: (context, _) => Opacity(
          opacity: animation.value - opacitySubtract,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: _loaderPadding),
            height: _loaderDotSize *
                (additionalSize.height - animation.value).abs(),
            width:
                _loaderDotSize * (additionalSize.width - animation.value).abs(),
            decoration: BoxDecoration(
              color: loaderColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
    );
  }
}
