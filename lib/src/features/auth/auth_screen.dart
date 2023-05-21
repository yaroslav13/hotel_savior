import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_savior/src/domain/internal_domain/entities/auth_error_reason/auth_error_reason.dart';
import 'package:hotel_savior/src/features/auth/auth_bloc.dart';
import 'package:hotel_savior/src/features/auth/hooks/video_controller_hook.dart';
import 'package:hotel_savior/src/features/auth/mappers/auth_error_reason_mapper.dart';
import 'package:hotel_savior/src/features/base/bloc_binder.dart';
import 'package:hotel_savior/src/features/base/bloc_helper.dart';
import 'package:hotel_savior/src/features/common/dots_loader_indicator.dart';
import 'package:hotel_savior/src/features/common/email_text_field.dart';
import 'package:hotel_savior/src/features/common/horizontal_stretched_button.dart';
import 'package:hotel_savior/src/features/common/password_text_field.dart';
import 'package:hotel_savior/src/features/extensions/build_context_colors_x.dart';
import 'package:hotel_savior/src/features/extensions/build_context_dependencies_x.dart';
import 'package:hotel_savior/src/features/extensions/build_context_navigation_x.dart';
import 'package:hotel_savior/src/features/localization/locale_keys.g.dart';
import 'package:hotel_savior/src/features/message_delegate/message_delegate.dart';
import 'package:hotel_savior/src/features/navigation/routes/app_sub_routes.dart';
import 'package:hotel_savior/src/features/utils/font_height_utils.dart';
import 'package:video_player/video_player.dart';

part 'widgets/introduction_video_player.dart';
part 'widgets/auth_form.dart';
part 'widgets/welcome_text.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      const BlocBinder<AuthEvent, AuthState, AuthBloc>(
        child: _AuthView(),
      );
}

class _AuthView extends HookWidget
    with BlocHelper<AuthBloc, AuthEvent, AuthState> {
  const _AuthView();

  void _onLogInButtonPressed({
    required BuildContext context,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailTextEditingController,
    required TextEditingController passwordTextEditingController,
  }) {
    //ignore: avoid-non-null-assertion
    if (formKey.currentState!.validate()) {
      final email = emailTextEditingController.text;
      final password = passwordTextEditingController.text;
      getBoundBloc(context).add(
        AuthEvent.logInButtonPressed(
          email: email,
          password: password,
        ),
      );
    }
  }

  void _onAuthFailed(BuildContext context, AuthErrorReason reason) {
    final authErrorMapper = context.getDependency<AuthErrorReasonMapper>();
    context.getDependency<MessageDelegate>().showSnackBar(
          context,
          authErrorMapper.map(reason),
        );
  }

  void _listenEmailChanges(
    BuildContext context,
    TextEditingController emailTextEditingController, {
    required String password,
  }) {
    final bloc = getBoundBloc(context);
    emailTextEditingController.addListener(
      () => bloc.add(
        AuthEvent.credentialsChanged(
          email: emailTextEditingController.text,
          password: password,
        ),
      ),
    );
  }

  void _listenPasswordChanges(
    BuildContext context,
    TextEditingController passwordTextEditingController, {
    required String email,
  }) {
    final bloc = getBoundBloc(context);
    passwordTextEditingController.addListener(
      () => bloc.add(
        AuthEvent.credentialsChanged(
          email: email,
          password: passwordTextEditingController.text,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(GlobalKey<FormState>.new);
    final emailTextEditingController = useTextEditingController();
    final passwordTextEditingController = useTextEditingController();

    useEffect(
      () {
        _listenEmailChanges(
          context,
          emailTextEditingController,
          password: passwordTextEditingController.text,
        );

        return null;
      },
      [emailTextEditingController],
    );

    useEffect(
      () {
        _listenPasswordChanges(
          context,
          passwordTextEditingController,
          email: emailTextEditingController.text,
        );

        return null;
      },
      [passwordTextEditingController],
    );

    return Scaffold(
      body: listen(
        listenWhen: (_, current) => current.errorReason != null,
        listener: (context, state) => _onAuthFailed(
          context,
          // ignore: avoid-non-null-assertion
          state.errorReason!,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const _IntroductionVideoPlayer(),
            25.verticalSpace,
            const _WelcomeText(),
            25.verticalSpace,
            _AuthForm(
              formKey: formKey,
              emailTextEditingController: emailTextEditingController,
              passwordTextEditingController: passwordTextEditingController,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16).r,
              child: TextButton(
                onPressed: () => context.navigate(
                  AppSubRoutes.registration,
                ),
                child: Text(LocaleKeys.notHaveAnAccount.tr()),
              ),
            ),
            10.verticalSpace,
            _LogInButton(
              onLoginPressed: () => _onLogInButtonPressed(
                context: context,
                formKey: formKey,
                emailTextEditingController: emailTextEditingController,
                passwordTextEditingController: passwordTextEditingController,
              ),
            ),
            25.verticalSpace,
          ],
        ),
      ),
    );
  }
}

class _LogInButton extends StatelessWidget
    with BlocHelper<AuthBloc, AuthEvent, AuthState> {
  const _LogInButton({
    required this.onLoginPressed,
  });

  final VoidCallback onLoginPressed;

  @override
  Widget build(BuildContext context) => observe(
        buildWhen: (previous, current) =>
            previous.isAuthProcessing != current.isAuthProcessing ||
            previous.isCredentialsEmpty != current.isCredentialsEmpty,
        builder: (context, state) => HorizontalStretchedButton(
          onPressed: state.isAuthProcessing || state.isCredentialsEmpty
              ? null
              : onLoginPressed,
          child: state.isAuthProcessing
              ? DotsLoaderIndicator(
                  isExpanded: false,
                  height: calculateFontHeight(
                    // ignore: avoid-non-null-assertion
                    Theme.of(context).textTheme.labelLarge!,
                  ),
                )
              : Text(LocaleKeys.logIn.tr()),
        ),
      );
}
