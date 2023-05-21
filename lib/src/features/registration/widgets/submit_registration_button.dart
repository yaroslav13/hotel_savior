part of '../registration_screen.dart';

class _SubmitRegistrationButton extends StatelessWidget
    with BlocHelper<RegistrationBloc, RegistrationEvent, RegistrationState> {
  const _SubmitRegistrationButton({
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => observe(
        buildWhen: (previous, current) =>
            previous.isFormSubmitting != current.isFormSubmitting ||
            previous.isFormFilled != current.isFormFilled,
        builder: (context, state) => HorizontalStretchedButton(
          onPressed:
              state.isFormSubmitting || !state.isFormFilled ? null : onPressed,
          child: state.isFormSubmitting
              ? DotsLoaderIndicator(
                  isExpanded: false,
                  height: calculateFontHeight(
                    // ignore: avoid-non-null-assertion
                    Theme.of(context).textTheme.labelLarge!,
                  ),
                )
              : Text(LocaleKeys.submit.tr()),
        ),
      );
}
