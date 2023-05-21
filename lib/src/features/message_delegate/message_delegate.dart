import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class MessageDelegate {
  void showSnackBar(
    BuildContext context,
    String message, {
    Duration duration = const Duration(milliseconds: 4000),
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: duration,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.fromLTRB(
          20,
          0,
          20,
          20,
        ),
      ),
    );
  }
}
