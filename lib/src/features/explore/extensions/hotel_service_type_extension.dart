import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel_service_type/hotel_service_type.dart';
import 'package:hotel_savior/src/features/extensions/build_context_dependencies_x.dart';
import 'package:hotel_savior/src/features/localization/locale_keys.g.dart';
import 'package:hotel_savior/src/features/resources/app_images/app_image.dart';
import 'package:hotel_savior/src/features/resources/app_images/app_image_mapper.dart';

extension HotelServiceTypeX on HotelServiceType {
  String getImagePath(BuildContext context) {
    final imageMapper = context.getDependency<AppImageMapper>();

    return switch (this) {
      HotelServiceType.restaurant => imageMapper.map(AppImage.restaurantsStub),
      HotelServiceType.bar => imageMapper.map(AppImage.barsStub),
      HotelServiceType.pool => imageMapper.map(AppImage.poolsStub),
      HotelServiceType.gym => imageMapper.map(AppImage.gymsStub),
      HotelServiceType.spa => imageMapper.map(AppImage.spasStub),
    };
  }

  String get title {
    return switch (this) {
      HotelServiceType.restaurant => LocaleKeys.restaurants.tr(),
      HotelServiceType.bar => LocaleKeys.bars.tr(),
      HotelServiceType.pool => LocaleKeys.pools.tr(),
      HotelServiceType.gym => LocaleKeys.gyms.tr(),
      HotelServiceType.spa => LocaleKeys.spas.tr(),
    };
  }
}
