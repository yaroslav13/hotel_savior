import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hotel_savior/src/features/extensions/build_context_dependencies_x.dart';
import 'package:hotel_savior/src/features/localization/locale_keys.g.dart';
import 'package:hotel_savior/src/features/resources/app_images/app_image.dart';
import 'package:hotel_savior/src/features/resources/app_images/app_image_mapper.dart';

class MembershipBenefitsScreen extends StatelessWidget {
  const MembershipBenefitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final imagesMapper = context.getDependency<AppImageMapper>();

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            10.verticalSpace,
            Center(
              child: Text(
                LocaleKeys.membershipBenefits.tr(),
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ),
            30.verticalSpace,
            Center(
              child: SvgPicture.asset(
                imagesMapper.map(AppImage.membershipBenefitsIcon),
                height: 120.h,
                width: 120.w,
              ).animate().scale(),
            ),
            15.verticalSpace,
            const _BenefitsListView(),
          ],
        ),
      ),
    );
  }
}

class _BenefitsListView extends StatelessWidget {
  const _BenefitsListView();

  @override
  Widget build(BuildContext context) {
    final benefits = <String>[
      '1. Wide selection of hotels.',
      '2. Access to hotel services.',
      '3. Time and effort savings.',
      '4. Convenience and simplified booking process.',
      '5. Exclusive offers and discounts.',
      '6. Comfort and enjoyment of travel.',
      '7. Access to information and reviews.',
    ];

    return Expanded(
      child: ListView(
        children: benefits
            .map(
              (benefit) => ListTile(
                title: Text(benefit),
              )
                  .animate()
                  .fadeIn(duration: 900.ms, delay: 300.ms)
                  .shimmer(blendMode: BlendMode.srcOver)
                  .move(begin: const Offset(-16, 0), curve: Curves.easeOutQuad),
            )
            .toList(),
      ),
    );
  }
}
