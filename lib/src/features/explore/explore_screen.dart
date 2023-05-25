// ignore_for_file: cast_nullable_to_non_nullable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel_service_type/hotel_service_type.dart';
import 'package:hotel_savior/src/features/explore/entities/category_item.dart';
import 'package:hotel_savior/src/features/explore/entities/explore_category.dart';
import 'package:hotel_savior/src/features/explore/extensions/hotel_service_type_extension.dart';
import 'package:hotel_savior/src/features/explore/widgets/categories_parallax_list_view.dart';
import 'package:hotel_savior/src/features/extensions/build_context_dependencies_x.dart';
import 'package:hotel_savior/src/features/extensions/build_context_navigation_x.dart';
import 'package:hotel_savior/src/features/localization/locale_keys.g.dart';
import 'package:hotel_savior/src/features/mappers/explore_category_mapper.dart';
import 'package:hotel_savior/src/features/navigation/routes/app_sub_routes.dart';
import 'package:hotel_savior/src/features/resources/app_images/app_image.dart';
import 'package:hotel_savior/src/features/resources/app_images/app_image_mapper.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  void _onCategorySelected(BuildContext context, HotelServiceType service) {
    final exploreCategory = context.getDependency<ExploreCategoryMapper>();

    context.navigate(
      AppSubRoutes.servicesLocationVisualizer,
      extra: exploreCategory.map(service),
    );
  }

  @override
  Widget build(BuildContext context) {
    final imageMapper = context.getDependency<AppImageMapper>();

    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.explore.tr()),
        centerTitle: true,
      ),
      body: SafeArea(
        child: CategoriesParallaxListView(
          categories: HotelServiceType.values.map((service) {
            return CategoryItem(
              title: service.title,
              imagePath: service.getImagePath(context),
              onTap: () => _onCategorySelected(context, service),
            );
          }).toList()
            ..insert(
              0,
              CategoryItem(
                title: LocaleKeys.hotels.tr(),
                imagePath: imageMapper.map(AppImage.hotelsStub),
                onTap: () => context.navigate(
                  AppSubRoutes.servicesLocationVisualizer,
                  extra: ExploreCategory.hotels,
                ),
              ),
            ),
        ),
      ),
    );
  }
}
