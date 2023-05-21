import 'package:flutter/material.dart';
import 'package:hotel_savior/src/features/resources/app_images/app_image.dart';
import 'package:hotel_savior/src/features/resources/app_images/app_images_provider.dart';

extension BuildContextAssetsX on BuildContext {
  String getImageAssetPath(AppImage appImage) =>
      AppImagesProvider.of(this).map(appImage);
}
