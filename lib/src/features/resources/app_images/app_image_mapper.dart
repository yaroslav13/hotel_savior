import 'package:hotel_savior/src/domain/base/base_mapper.dart';
import 'package:hotel_savior/src/features/resources/app_images/app_image.dart';
import 'package:injectable/injectable.dart';

@injectable
class AppImageMapper implements BaseMapper<AppImage, String> {
  const AppImageMapper();

  @override
  String map(AppImage image) {
    return switch (image) {
      AppImage.logo => _AppImagesPaths.suitcase,
      AppImage.fingerprint => _AppImagesPaths.fingerprint,
      AppImage.membershipBenefitsLogo => _AppImagesPaths.membershipBenefitsLogo,
      AppImage.membershipBenefitsIcon => _AppImagesPaths.membershipBenefitsIcon,
      AppImage.hotelsStub => _AppImagesPaths.hotelsStub,
      AppImage.gymsStub => _AppImagesPaths.gymsStub,
      AppImage.restaurantsStub => _AppImagesPaths.restaurantsStub,
      AppImage.spasStub => _AppImagesPaths.spasStub,
      AppImage.poolsStub => _AppImagesPaths.poolsStub,
      AppImage.barsStub => _AppImagesPaths.barsStub,
      AppImage.background => _AppImagesPaths.background,
    };
  }
}

abstract class _AppImagesPaths {
  static const suitcase = 'assets/images/suitcase.svg';
  static const fingerprint = 'assets/images/fingerprint.svg';
  static const membershipBenefitsLogo =
      'assets/images/membership_benefits_logo.svg';
  static const membershipBenefitsIcon =
      'assets/images/membership_benefits_icon.svg';
  static const hotelsStub = 'assets/images/hotels_stub.jpg';
  static const gymsStub = 'assets/images/gyms_stub.jpg';
  static const restaurantsStub = 'assets/images/restaurants_stub.jpg';
  static const spasStub = 'assets/images/spas_stub.jpg';
  static const poolsStub = 'assets/images/pools_stub.jpg';
  static const barsStub = 'assets/images/bars_stub.jpg';
  static const background = 'assets/images/background_image.jpg';
}
