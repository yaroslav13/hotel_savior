import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_savior/src/domain/internal_domain/entities/auth_error_reason/auth_error_reason.dart';

part 'log_in_snapshot.freezed.dart';


@freezed
class LogInSnapshot with _$LogInSnapshot {
  factory LogInSnapshot.success() = _Success;
  factory LogInSnapshot.error(AuthErrorReason reason) = _Error;
}
