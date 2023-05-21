part of '../registration_screen.dart';

const _minFullNameLength = 2;

class _FullNameTextField extends StatelessWidget
    with BlocHelper<RegistrationBloc, RegistrationEvent, RegistrationState> {
  const _FullNameTextField();

  String? _validateFullName(String? text) {
    final trimmedText = text?.trim();
    if (trimmedText == null || trimmedText.isEmpty) {
      return LocaleKeys.fullNameIsRequired.tr();
    }
    
    final words = trimmedText.split(' ');
    if (words.length < _minFullNameLength) {
      return LocaleKeys.pleaseEnterYourFullName.tr();
    }

    return null;
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26).r,
        child: TextFormField(
          onChanged: (text) => getBoundBloc(context).add(
            RegistrationEvent.fullNameChanged(text),
          ),
          decoration: const InputDecoration().copyWith(
            hintText:  LocaleKeys.fullName.tr(),
          ),
          validator: _validateFullName,
        ),
      );
}
