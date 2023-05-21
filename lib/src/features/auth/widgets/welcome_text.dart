part of '../auth_screen.dart';

const _slideAnimationDuration = Duration(milliseconds: 600);

class _WelcomeText extends StatelessWidget {
  const _WelcomeText();

  @override
  Widget build(BuildContext context) => Align(
        alignment: const Alignment(-0.83, 0),
        child: Text(
          LocaleKeys.welcome.tr(),
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: context.colors.blueM3LightPrimary,
                fontWeight: FontWeight.bold,
              ),
        )
            .animate()
            .slideX(
              duration: _slideAnimationDuration,
              curve: Curves.easeOutCubic,
            )
            .fadeIn(),
      );
}
