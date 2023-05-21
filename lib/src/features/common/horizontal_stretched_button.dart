import 'package:flutter/material.dart';

class HorizontalStretchedButton extends StatelessWidget {
  const HorizontalStretchedButton({
    required this.child,
    required this.onPressed,
    super.key,
  });

  final Widget child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ElevatedButton(
            onPressed: onPressed,
            child: child,
          ),
        ),
      );
}
