import 'package:easy_localization/easy_localization.dart';
import 'package:hotel_savior/src/domain/base/base_mapper.dart';
import 'package:hotel_savior/src/domain/internal_domain/entities/auth_error_reason/auth_error_reason.dart';
import 'package:hotel_savior/src/features/localization/locale_keys.g.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthErrorReasonMapper implements BaseMapper<AuthErrorReason, String> {
  @override
  String map(AuthErrorReason param) {
    switch (param) {
      case AuthErrorReason.userNotFound:
        return LocaleKeys.userNotFound.tr();
      case AuthErrorReason.wrongPassword:
        return LocaleKeys.wrongPassword.tr();
      case AuthErrorReason.invalidEmail:
        return LocaleKeys.invalidEmail.tr();
      case AuthErrorReason.unknown:
        return LocaleKeys.unknownError.tr();
    }
  }
}
