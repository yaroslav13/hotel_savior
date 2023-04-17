part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isAuthProcessing,
    @Default(false) bool isAuthSuccess,
    @Default(true) bool isCredentialsEmpty,
    AuthErrorReason? errorReason,
  }) = _AuthState;
}
