part of '../qr_code_screen.dart';

class _BackSide extends StatelessWidget
    with BlocHelper<QrCodeBloc, QrCodeEvent, QrCodeState> {
  const _BackSide({
    required this.onBackButtonPressed,
  });

  final VoidCallback onBackButtonPressed;

  @override
  Widget build(BuildContext context) {
    final colorsContainer = context.getDependency<ColorsContainer>();

    return Transform(
      alignment: FractionalOffset.center,
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.002)
        ..rotateY(pi),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)).r,
          color: colorsContainer.belgion,
        ),
        child: Column(
          children: [
            80.verticalSpace,
            observe(
              buildWhen: (previous, current) =>
                  previous.qrCodeData != current.qrCodeData ||
                  current.isLoading != previous.isLoading,
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(
                    child: DotsLoaderIndicator(isExpanded: false),
                  );
                }

                return QrImageView(
                  data: state.qrCodeData,
                  size: 220.sp,
                );
              },
            ),
            const Spacer(),
            HorizontalStretchedButton(
              onPressed: onBackButtonPressed,
              child: Text(LocaleKeys.back.tr()),
            ),
            40.verticalSpace,
          ],
        ),
      ),
    );
  }
}
