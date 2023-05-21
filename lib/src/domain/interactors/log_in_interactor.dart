import 'package:hotel_savior/src/domain/base/base_interactor.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/user_credentials/user_credentials.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/invalid_email_exception.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/unknown_exception.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/user_not_found_exception.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/wrong_password_exception.dart';
import 'package:hotel_savior/src/domain/internal_domain/entities/auth_error_reason/auth_error_reason.dart';
import 'package:hotel_savior/src/domain/internal_domain/entities/log_in_snapshot/log_in_snapshot.dart';
import 'package:hotel_savior/src/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';


@injectable
class LogInInteractor implements BaseInteractor<LogInSnapshot, UserCredentials> {
  const LogInInteractor(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<LogInSnapshot> call(UserCredentials param) async {
    try {
      await _authRepository.logIn(param);
      
      return LogInSnapshot.success();
    } on UserNotFoundException {
      return LogInSnapshot.error(AuthErrorReason.userNotFound);
    } on WrongPasswordException {
      return LogInSnapshot.error(AuthErrorReason.wrongPassword);
    } on InvalidEmailException {
      return LogInSnapshot.error(AuthErrorReason.invalidEmail);
    } on UnknownException {
      return LogInSnapshot.error(AuthErrorReason.unknown);
    } on Exception {
      return LogInSnapshot.error(AuthErrorReason.unknown);
    }
  }
}
