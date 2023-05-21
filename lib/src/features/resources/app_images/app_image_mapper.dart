import 'package:hotel_savior/src/domain/base/base_mapper.dart';
import 'package:hotel_savior/src/features/resources/app_images/app_image.dart';
import 'package:injectable/injectable.dart';

@injectable
class AppImageMapper implements BaseMapper<AppImage, String> {
  const AppImageMapper();

  @override
  String map(AppImage image) {
    switch (image) {
      case AppImage.logo:
        return _AppImagesPaths.suitcase;
      case AppImage.fingerprint:
        return _AppImagesPaths.fingerprint;
    }
  }
}

abstract class _AppImagesPaths {
  static const suitcase = 'assets/images/suitcase.svg';
  static const fingerprint = 'assets/images/fingerprint.svg';
}
