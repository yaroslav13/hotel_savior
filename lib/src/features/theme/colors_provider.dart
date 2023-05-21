import 'package:flutter/material.dart';
import 'package:hotel_savior/src/features/extensions/build_context_dependencies_x.dart';
import 'package:hotel_savior/src/features/theme/colors_container.dart';
import 'package:provider/provider.dart';

class ColorsProvider extends StatelessWidget {
  const ColorsProvider({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) => Provider<ColorsContainer>(
        create: (context) => context.getDependency<ColorsContainer>(),
        child: child,
      );
}
