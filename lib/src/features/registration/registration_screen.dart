import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_savior/src/domain/business_domain/constants/auth_rules.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/gender/gender.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/relationship_status/relationship_status.dart';
import 'package:hotel_savior/src/features/base/bloc_binder.dart';
import 'package:hotel_savior/src/features/base/bloc_helper.dart';
import 'package:hotel_savior/src/features/common/dots_loader_indicator.dart';
import 'package:hotel_savior/src/features/common/email_text_field.dart';
import 'package:hotel_savior/src/features/common/horizontal_stretched_button.dart';
import 'package:hotel_savior/src/features/common/password_text_field.dart';
import 'package:hotel_savior/src/features/extensions/build_context_dependencies_x.dart';
import 'package:hotel_savior/src/features/extensions/build_context_navigation_x.dart';
import 'package:hotel_savior/src/features/localization/locale_keys.g.dart';
import 'package:hotel_savior/src/features/message_delegate/message_delegate.dart';
import 'package:hotel_savior/src/features/navigation/routes/app_root_routes.dart';
import 'package:hotel_savior/src/features/registration/registration_bloc.dart';
import 'package:hotel_savior/src/features/utils/date_formatter_utils.dart';
import 'package:hotel_savior/src/features/utils/font_height_utils.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:numberpicker/numberpicker.dart';

part 'widgets/gender_picker.dart';
part 'widgets/birthday_picker_field.dart';
part 'widgets/registration_section_label.dart';
part 'widgets/relationship_status_picker.dart';
part 'widgets/kids_count_picker.dart';
part 'widgets/password_text_field.dart';
part 'widgets/submit_registration_button.dart';
part 'widgets/full_name_text_field.dart';
part 'widgets/registration_form_title.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      const BlocBinder<RegistrationEvent, RegistrationState, RegistrationBloc>(
        child: _RegistrationView(),
      );
}

class _RegistrationView extends HookWidget
    with BlocHelper<RegistrationBloc, RegistrationEvent, RegistrationState> {
  const _RegistrationView();

  void _onSubmitPressed({
    required BuildContext context,
    required GlobalKey<FormState> formKey,
  }) {
    final bloc = getBoundBloc(context);

    //ignore: avoid-non-null-assertion
    if (formKey.currentState!.validate()) {
      bloc.add(const RegistrationEvent.formSubmitted());
    }
  }

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(GlobalKey<FormState>.new);

    final emailTextEditingController = useTextEditingController();

    useEffect(
      () {
        final listener = emailTextEditingController.addListener(() {
          getBoundBloc(context).add(
            RegistrationEvent.emailChanged(emailTextEditingController.text),
          );
        });

        return () {
          emailTextEditingController.removeListener(() => listener);
        };
      },
      [emailTextEditingController],
    );

    return _ErrorObserver(
      child: _FormSubmissionObserver(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(LocaleKeys.registration.tr()),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    30.verticalSpace,
                    const _RegistrationFormTitle(),
                    20.verticalSpace,
                    _RegistrationSectionLabel(
                      label: LocaleKeys.whatIsYourFullName.tr(),
                      hint: LocaleKeys.weWantToKnowHowToAddressYou.tr(),
                    ),
                    const _FullNameTextField(),
                    20.verticalSpace,
                    _RegistrationSectionLabel(
                      label: LocaleKeys.whatIsYourGender.tr(),
                    ),
                    const _GenderPicker(),
                    20.verticalSpace,
                    _RegistrationSectionLabel(
                      label: LocaleKeys.whenIsYourBirthday.tr(),
                      hint: LocaleKeys.weAreBuildingLoyalityProgram.tr(),
                    ),
                    const _BirthdayPickerField(),
                    20.verticalSpace,
                    _RegistrationSectionLabel(
                      label: LocaleKeys.whatIsYourRelationshipStatus.tr(),
                      hint: LocaleKeys.weWantToSendYouCorrectSuggestions.tr(),
                    ),
                    const _RelationshipStatusPicker(),
                    20.verticalSpace,
                    _RegistrationSectionLabel(
                      label: LocaleKeys.howManyKidsDoYouHave.tr(),
                      hint: LocaleKeys.weWantToSendYouRelevantUpdates.tr(),
                    ),
                    const _KidsCountPicker(),
                    10.verticalSpace,
                    _RegistrationSectionLabel(
                      label: LocaleKeys.enterYourEmail.tr(),
                    ),
                    EmailTextField(
                      margin: const EdgeInsets.symmetric(horizontal: 26).r,
                      controller: emailTextEditingController,
                    ),
                    20.verticalSpace,
                    _RegistrationSectionLabel(
                      label: LocaleKeys.createPassword.tr(),
                    ),
                    const _PasswordTextField(),
                    30.verticalSpace,
                    _SubmitRegistrationButton(
                      onPressed: () => _onSubmitPressed(
                        context: context,
                        formKey: formKey,
                      ),
                    ),
                    10.verticalSpace,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ErrorObserver extends StatelessWidget
    with BlocHelper<RegistrationBloc, RegistrationEvent, RegistrationState> {
  const _ErrorObserver({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) => listen(
        listenWhen: (previous, current) =>
            previous.errorMessageLocaleKey != current.errorMessageLocaleKey,
        listener: (context, state) {
          final errorMessageLocaleKey = state.errorMessageLocaleKey;

          if (errorMessageLocaleKey != null) {
            context.getDependency<MessageDelegate>().showSnackBar(
                  context,
                  errorMessageLocaleKey.tr(),
                );
          }
        },
        child: child,
      );
}

class _FormSubmissionObserver extends StatelessWidget
    with BlocHelper<RegistrationBloc, RegistrationEvent, RegistrationState> {
  const _FormSubmissionObserver({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) => listen(
        listenWhen: (previous, current) =>
            previous.isFormSubmissionSuccess != current.isFormSubmissionSuccess,
        listener: (context, state) {
          if (state.isFormSubmissionSuccess) {
            context.navigate(AppRootRoutes.home);
          }
        },
        child: child,
      );
}
