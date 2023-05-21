part of '../registration_screen.dart';

class _GenderPicker extends StatelessWidget
    with BlocHelper<RegistrationBloc, RegistrationEvent, RegistrationState> {
  const _GenderPicker();

  @override
  Widget build(BuildContext context) => observe(
        buildWhen: (previous, current) => previous.gender != current.gender,
        builder: (context, state) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8).r,
          child: SegmentedButton<Gender>(
            segments: [
              ButtonSegment(
                value: Gender.male,
                label: Text(LocaleKeys.gender.tr(gender: Gender.male.name)),
                icon: Icon(Icons.male, size: 24.sp),
              ),
              ButtonSegment(
                value: Gender.female,
                label: Text(LocaleKeys.gender.tr(gender: Gender.female.name)),
                icon: Icon(Icons.female, size: 24.sp),
              ),
              ButtonSegment(
                value: Gender.other,
                label: Text(LocaleKeys.gender.tr(gender: Gender.other.name)),
              ),
            ],
            selected: <Gender>{state.gender},
            showSelectedIcon: false,
            onSelectionChanged: (selectedGenders) => getBoundBloc(context)
                .add(RegistrationEvent.genderPicked(selectedGenders.first)),
          ),
        ),
      );
}
