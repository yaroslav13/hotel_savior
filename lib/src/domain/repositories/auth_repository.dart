import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/user_credentials/user_credentials.dart';

abstract interface class AuthRepository {
  Future<bool> checkIsUserAuthorized();

  Future<void> logIn(UserCredentials userCredentials);

  String get authorizedUserId;

  Future<void> signUp(UserCredentials userCredentials);

  Stream<String?> get authorizationIdStream;

  // This method is only for DI purposes
  @protected
  void dispose();
}
