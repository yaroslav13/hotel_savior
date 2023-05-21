part of '../registration_screen.dart';

class _RegistrationFormTitle extends StatelessWidget {
  const _RegistrationFormTitle();

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24).r,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              LocaleKeys.tellUsAboutYourself.tr(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
            30.verticalSpace,
            Text(
              LocaleKeys.knowingMoreAboutYourselfHelpsUs.tr(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      );
}
