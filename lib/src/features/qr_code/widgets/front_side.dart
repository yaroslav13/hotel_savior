part of '../qr_code_screen.dart';

class _FrontSide extends StatelessWidget {
  const _FrontSide({
    required this.onScanMePressed,
  });

  final VoidCallback onScanMePressed;

  @override
  Widget build(BuildContext context) {
    final imagesMapper = context.getDependency<AppImageMapper>();
    final colorsContainer = context.getDependency<ColorsContainer>();

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)).r,
        image: DecorationImage(
          image: AssetImage(imagesMapper.map(AppImage.background)),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          80.verticalSpace,
          Text(
            LocaleKeys.logo.tr(),
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: colorsContainer.white,
                ),
          ),
          const Spacer(),
          HorizontalStretchedButton(
            onPressed: onScanMePressed,
            child: Text(LocaleKeys.scanMe.tr()),
          ),
          40.verticalSpace,
        ],
      ),
    );
  }
}
