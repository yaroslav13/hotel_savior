import 'package:flutter/material.dart';
import 'package:hotel_savior/src/features/extensions/build_context_dependencies_x.dart';
import 'package:hotel_savior/src/features/resources/app_images/app_image_mapper.dart';
import 'package:provider/provider.dart';

class AppImagesProvider extends StatelessWidget {
  const AppImagesProvider({
    required this.child,
    super.key,
  });

  final Widget child;

  static AppImageMapper of(BuildContext context) =>
      Provider.of<AppImageMapper>(context, listen: false);

  @override
  Widget build(BuildContext context) => Provider<AppImageMapper>(
        create: (context) => context.getDependency<AppImageMapper>(),
        child: child,
      );
}
