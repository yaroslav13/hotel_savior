import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:hotel_savior/src/data/api/auth_api.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/user_credentials/user_credentials.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/email_already_in_use_exception.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/invalid_email_exception.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/unknown_exception.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/user_not_found_exception.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/wrong_password_exception.dart';
import 'package:hotel_savior/src/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';

class _AuthErrorCodes {
  _AuthErrorCodes._();

  static const userNotFound = 'user-not-found';
  static const wrongPassword = 'wrong-password';
  static const invalidEmail = 'invalid-email';
  static const emailAlreadyInUse = 'email-already-in-use';
}

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(
    this._authApi,
  ) {
    _subscribeAuthorizationChanges();
  }

  final AuthApi _authApi;

  late final StreamSubscription<String?> _authorizationIdSubscription;
  final _authorizationIdPublishSubject = PublishSubject<String?>();
  Stream<String?> get authorizationIdStream =>
      _authorizationIdPublishSubject.stream;

  @override
  Future<bool> checkIsUserAuthorized() async =>
      _authApi.checkIsUserAuthorized();

  @override
  Future<void> logIn(UserCredentials userCredentials) async {
    try {
      await _authApi.signInWithEmailAndPassword(
        email: userCredentials.email,
        password: userCredentials.password,
      );
    } on FirebaseAuthException catch (e) {
      final errorCode = e.code;
      if (errorCode == _AuthErrorCodes.userNotFound) {
        throw const UserNotFoundException();
      } else if (errorCode == _AuthErrorCodes.wrongPassword) {
        throw const WrongPasswordException();
      } else if (errorCode == _AuthErrorCodes.invalidEmail) {
        throw const InvalidEmailException();
      } else {
        throw const UnknownException();
      }
    }
  }

  @override
  Future<void> signUp(UserCredentials userCredentials) async {
    try {
      await _authApi.createUserWithEmailAndPassword(
        email: userCredentials.email,
        password: userCredentials.password,
      );
    } on FirebaseAuthException catch (e) {
      final errorCode = e.code;
      if (errorCode == _AuthErrorCodes.invalidEmail) {
        throw const InvalidEmailException();
      } else if (errorCode == _AuthErrorCodes.emailAlreadyInUse) {
        throw const EmailAlreadyInUseException();
      } else {
        throw const UnknownException();
      }
    }
  }

  @override
  String get authorizedUserId {
    final currentUser = _authApi.fetchCurrentUser();
    if (currentUser == null) {
      throw const UserNotFoundException();
    } else {
      return currentUser.uid;
    }
  }

  @disposeMethod
  Future<void> dispose() async {
    await _authorizationIdSubscription.cancel();
    await _authorizationIdPublishSubject.close();
  }

  void _subscribeAuthorizationChanges() {
    _authorizationIdSubscription = _authApi.onAuthStateChanged.map((user) {
      return user?.uid;
    }).listen(_authorizationIdPublishSubject.add);
  }
}
