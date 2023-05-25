import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hotel_savior/src/features/extensions/build_context_dependencies_x.dart';
import 'package:hotel_savior/src/features/localization/locale_keys.g.dart';
import 'package:hotel_savior/src/features/resources/app_images/app_image.dart';
import 'package:hotel_savior/src/features/resources/app_images/app_image_mapper.dart';
import 'package:hotel_savior/src/features/theme/colors_container.dart';

class MembershipBenefitsPreviewCard extends StatelessWidget {
  const MembershipBenefitsPreviewCard({required this.onPressed, super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final borderRadius = const BorderRadius.all(Radius.circular(20)).r;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20).copyWith(
        top: 30 + MediaQuery.of(context).viewPadding.top,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
      child: SizedBox(
        height: 320.h,
        child: ClipRRect(
          borderRadius: borderRadius,
          child: Stack(
            children: [
              const _BackgroundImage(),
              const Align(
                alignment: Alignment.bottomCenter,
                child: _Title(),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: _RoundButton(
                  onPressed: onPressed,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage();

  @override
  Widget build(BuildContext context) {
    final imageMapper = context.getDependency<AppImageMapper>();

    return SvgPicture.asset(
      imageMapper.map(AppImage.membershipBenefitsLogo),
      fit: BoxFit.cover,
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    final colorsContainer = context.getDependency<ColorsContainer>();

    return Padding(
      padding: const EdgeInsets.only(bottom: 80).r,
      child: SizedBox(
        width: 200.w,
        child: Text(
          LocaleKeys.discoverYourNewMembershipBenefits.tr(),
          maxLines: 2,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: colorsContainer.white,
              ),
        ),
      ),
    );
  }
}

class _RoundButton extends StatelessWidget {
  const _RoundButton({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final colorsContainer = context.getDependency<ColorsContainer>();

    return Padding(
      padding: const EdgeInsets.only(bottom: 25).r,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          shape: const CircleBorder(),
          side: BorderSide(
            color: colorsContainer.white,
            width: 2,
          ),
        ),
        child: Icon(Icons.arrow_forward, color: colorsContainer.white),
      ),
    );
  }
}
