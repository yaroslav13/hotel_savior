part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.logInButtonPressed({
    required String email,
    required String password,
  }) = _LogInButtonPressed;

  const factory AuthEvent.credentialsChanged({
    required String email,
    required String password,
  }) = _CredentialsChanged;
}
