part of '../registration_screen.dart';

class _PasswordTextField extends HookWidget
    with BlocHelper<RegistrationBloc, RegistrationEvent, RegistrationState> {
  const _PasswordTextField();

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26).r,
      child: Column(
        children: [
          PasswordTextField(controller: controller),
          16.verticalSpace,
          FlutterPwValidator(
            controller: controller,
            height: 150,
            width: MediaQuery.of(context).size.width,
            uppercaseCharCount: 1,
            numericCharCount: 1,
            specialCharCount: 1,
            minLength: AuthRules.minPasswordLength,
            onSuccess: () => getBoundBloc(context).add(
              RegistrationEvent.passwordApproved(
                controller.text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
