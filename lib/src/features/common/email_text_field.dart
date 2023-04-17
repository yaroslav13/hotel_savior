import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:hotel_savior/src/features/localization/locale_keys.g.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    required this.controller,
    this.margin = EdgeInsets.zero,
    super.key,
  });

  final TextEditingController controller;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) => Padding(
        padding: margin,
        child: TextFormField(
          controller: controller,
          decoration: const InputDecoration().copyWith(
            labelText: LocaleKeys.email.tr(),
          ),
          validator: ValidationBuilder()
              .required(
                LocaleKeys.emailIsRequired.tr(),
              )
              .email(
                LocaleKeys.emailIsNotValid.tr(),
              )
              .build(),
        ),
      );
}
