import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/user_credentials/user_credentials.dart';
import 'package:hotel_savior/src/domain/interactors/log_in_interactor.dart';
import 'package:hotel_savior/src/domain/internal_domain/entities/auth_error_reason/auth_error_reason.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(
    this._logInInteractor,
  ) : super(const AuthState()) {
    on<_LogInButtonPressed>(_onLogInButtonPressed);
    on<_CredentialsChanged>(_onCredentialsChanged);
  }

  final LogInInteractor _logInInteractor;

  void _onCredentialsChanged(
    _CredentialsChanged event,
    Emitter<AuthState> emit,
  ) {
    emit(
      state.copyWith(
        errorReason: null,
        isCredentialsEmpty:
            event.email.isEmpty || event.password.isEmpty,
      ),
    );
  }

  Future<void> _onLogInButtonPressed(
    _LogInButtonPressed event,
    Emitter<AuthState> emit,
  ) async {
    emit(
      state.copyWith(
        isAuthProcessing: true,
        errorReason: null,
      ),
    );

    /// Can't throw an exception here because
    /// it will be mapped by the interactor to a [LogInSnapshot.error]
    final logInSnapshot = await _logInInteractor(
      UserCredentials(
        email: event.email.trim(),
        password: event.password.trim(),
      ),
    );

    logInSnapshot.when(
      success: () => emit(
        state.copyWith(
          isAuthProcessing: false,
          isAuthSuccess: true,
        ),
      ),
      error: (reason) => emit(
        state.copyWith(
          isAuthProcessing: false,
          errorReason: reason,
        ),
      ),
    );
  }
}
