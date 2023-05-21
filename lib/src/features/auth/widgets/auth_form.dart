part of '../auth_screen.dart';

class _AuthForm extends StatelessWidget
    with BlocHelper<AuthBloc, AuthEvent, AuthState> {
  const _AuthForm({
    required this.formKey,
    required this.emailTextEditingController,
    required this.passwordTextEditingController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailTextEditingController;
  final TextEditingController passwordTextEditingController;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              EmailTextField(
                controller: emailTextEditingController,
              ),
              16.verticalSpace,
              PasswordTextField(
                controller: passwordTextEditingController,
              ),
            ],
          ),
        ),
      );
}
