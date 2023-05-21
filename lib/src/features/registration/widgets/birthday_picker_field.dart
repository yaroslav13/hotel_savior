part of '../registration_screen.dart';

const _dateFormat = 'dd/MM/yyyy';
const _dateMask = '##/##/####';

class _BirthdayPickerField extends StatelessWidget
    with BlocHelper<RegistrationBloc, RegistrationEvent, RegistrationState> {
  const _BirthdayPickerField();

  String? _validateBirthdayDate(
    BuildContext context,
    String? text,
  ) {
    final trimmedText = text?.trim();
    if (trimmedText == null || trimmedText.isEmpty) {
      return null;
    }

    try {
      final date =
          context.getDependency<DateFormatterUtils>().parse(trimmedText);

      final now = DateTime.now();
      if (date.isAfter(now)) {
        return LocaleKeys.birthdayMusthBeInThePast.tr();
      }

      final minimalDate = DateTime(
        date.year + AuthRules.minimalAge,
        now.month,
        now.day,
      );

      if (!minimalDate.isBefore(now)) {
        return LocaleKeys.youMustBeAtLeastXYearsOld.tr(
          args: [AuthRules.minimalAge.toString()],
        );
      }

      return null;
    } on FormatException {
      return LocaleKeys.invalidDateFormat.tr();
    }
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26).r,
        child: TextFormField(
          keyboardType: TextInputType.datetime,
          onChanged: (text) => getBoundBloc(context).add(
            RegistrationEvent.birthdayDateChanged(text),
          ),
          decoration: const InputDecoration().copyWith(
            hintText: _dateFormat.toUpperCase(),
          ),
          inputFormatters: [
            MaskTextInputFormatter(mask: _dateMask),
          ],
          validator: (text) => _validateBirthdayDate(
            context,
            text,
          ),
        ),
      );
}
