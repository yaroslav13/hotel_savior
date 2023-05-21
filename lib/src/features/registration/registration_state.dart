part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    @Default(Gender.other) Gender gender,
    @Default(0) int kidsCount,
    @Default(false) bool isFormSubmitting,
    @Default(false) bool isFormSubmissionSuccess,
    @Default(false) bool isFormFilled,
    String? email,
    String? password,
    String? fullName,
    String? birthdayDate,
    RelationshipStatus? relationshipStatus,
    String? errorMessageLocaleKey,
  }) = _RegistrationState;
}