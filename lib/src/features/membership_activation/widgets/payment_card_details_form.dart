part of '../membership_activation_screen.dart';

const _creditCardNumberMask = '#### #### #### ####';

const _dateFormat = '##/####';

const _cvvCodeLength = 3;

class _PaymentCardDetailsForm extends StatelessWidget {
  const _PaymentCardDetailsForm({
    required this.formKey,
    required this.onCardNumberChanged,
    required this.onCardHolderChanged,
    required this.onExpireDateChanged,
    required this.onCvvCodeChanged,
  });

  final GlobalKey<FormState> formKey;
  final ValueChanged<String> onCardNumberChanged;
  final ValueChanged<String> onCardHolderChanged;
  final ValueChanged<String> onExpireDateChanged;
  final ValueChanged<String> onCvvCodeChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24).r,
      child: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration().copyWith(
                labelText: LocaleKeys.cardNumber.tr(),
              ),
              validator: ValidationBuilder()
                  .required(
                    LocaleKeys.cardNumberIsRequired.tr(),
                  )
                  .regExp(
                    RegularExpressions.creditCard,
                    LocaleKeys.cardNumberIsNotValid.tr(),
                  )
                  .build(),
              inputFormatters: [
                MaskTextInputFormatter(mask: _creditCardNumberMask),
              ],
              onChanged: onCardNumberChanged,
            ),
            16.verticalSpace,
            _CardDetailsRow(
              onExpireDateChanged: onExpireDateChanged,
              onCvvCodeChanged: onCvvCodeChanged,
            ),
            16.verticalSpace,
            TextFormField(
              decoration: const InputDecoration().copyWith(
                labelText: LocaleKeys.cardHolder.tr(),
              ),
              validator: ValidationBuilder()
                  .required(
                    LocaleKeys.cardHolderIsRequired.tr(),
                  )
                  .build(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(
                  RegularExpressions.onlyCharacters,
                ),
              ],
              onChanged: onCardHolderChanged,
            ),
          ],
        ),
      ),
    );
  }
}

class _CardDetailsRow extends StatelessWidget {
  const _CardDetailsRow({
    required this.onExpireDateChanged,
    required this.onCvvCodeChanged,
  });

  final ValueChanged<String> onExpireDateChanged;
  final ValueChanged<String> onCvvCodeChanged;

  String? _validateExpireDate(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return LocaleKeys.expirationDateIsRequired.tr();
    }

    try {
      final date = context.getDependency<DateFormatterUtils>().parse(
            value,
            format: DateFormats.mMyyyy,
          );

      if (date.isBefore(DateTime.now())) {
        return LocaleKeys.expirationDateIsNotValid.tr();
      }

      return null;
    } on FormatException {
      return LocaleKeys.expirationDateIsNotValid.tr();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: TextFormField(
            decoration: const InputDecoration().copyWith(
              labelText: LocaleKeys.expirationDate.tr(),
            ),
            inputFormatters: [
              MaskTextInputFormatter(mask: _dateFormat),
            ],
            validator: (expireDate) => _validateExpireDate(context, expireDate),
            onChanged: onExpireDateChanged,
          ),
        ),
        16.horizontalSpace,
        Flexible(
          child: TextFormField(
            decoration: const InputDecoration().copyWith(
              labelText: LocaleKeys.cvv.tr(),
            ),
            inputFormatters: [
              LengthLimitingTextInputFormatter(_cvvCodeLength),
            ],
            validator: ValidationBuilder()
                .required(
                  LocaleKeys.cvvIsRequired.tr(),
                )
                .minLength(
                  3,
                  LocaleKeys.cvvIsNotValid.tr(),
                )
                .maxLength(
                  3,
                  LocaleKeys.cvvIsNotValid.tr(),
                )
                .build(),
            onChanged: onCvvCodeChanged,
          ),
        ),
      ],
    );
  }
}
