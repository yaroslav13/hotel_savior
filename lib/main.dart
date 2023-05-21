import 'package:flutter/material.dart';
import 'package:hotel_savior/src/features/application.dart';
import 'package:hotel_savior/src/features/dependencies/dependencies_provider.dart';
import 'package:hotel_savior/src/features/localization/localization_provider.dart';
import 'package:hotel_savior/src/features/resources/app_images/app_images_provider.dart';
import 'package:hotel_savior/src/features/theme/colors_provider.dart';

void main() {
  runApp(const _Runner());
}

class _Runner extends StatelessWidget {
  const _Runner();

  @override
  Widget build(BuildContext context) => const DependenciesProvider(
        child: AppImagesProvider(
          child: ColorsProvider(
            child: LocalizationProvider(
              child: Application(),
            ),
          ),
        ),
      );
}
