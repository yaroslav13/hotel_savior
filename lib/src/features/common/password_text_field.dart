import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:hotel_savior/src/domain/business_domain/constants/auth_rules.dart';
import 'package:hotel_savior/src/features/localization/locale_keys.g.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    required this.controller,
    super.key,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) => TextFormField(
        controller: controller,
        decoration: const InputDecoration().copyWith(
          labelText: LocaleKeys.password.tr(),
        ),
        validator: ValidationBuilder()
            .required(
              LocaleKeys.passwordIsRequired.tr(),
            )
            .minLength(
              AuthRules.minPasswordLength,
              LocaleKeys.passwordIsTooShort.tr(),
            )
            .build(),
      );
}
