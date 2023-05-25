part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.genderPicked(Gender gender) = _GenderPicked;
  const factory RegistrationEvent.birthdayDateChanged(
    String birthdayDate,
  ) = _BirthdayDateChanged;
  const factory RegistrationEvent.relationshipStatusPicked(
    RelationshipStatus? relationshipStatus,
  ) = _RelationshipStatusPicked;
  const factory RegistrationEvent.kidsCountPicked(int kidsCount) =
      _KidsCountPicked;
  const factory RegistrationEvent.emailChanged(String email) = _EmailChanged;
  const factory RegistrationEvent.passwordApproved(String password) =
      _PasswordApproved;
  const factory RegistrationEvent.passwordFailed() =
      _PasswordFailed;
  const factory RegistrationEvent.fullNameChanged(String fullName) =
      _FullNameChanged;
  const factory RegistrationEvent.formSubmitted() = _FormSubmitted;
}
