import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_savior/src/features/navigation/routes/base/base_route.dart';

extension BuildContextNavigationX on BuildContext {
  void navigate(BaseRoute route) {
    goNamed(route.routeName);
  }

  void relocate(BaseRoute route) {
    go(route.path);
  }
}
