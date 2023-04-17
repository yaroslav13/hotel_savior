import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthApi {
  AuthApi(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;

  Future<UserCredential> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) =>
      _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

  Future<UserCredential> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) =>
      _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

  Stream<User?> get onAuthStateChanged => _firebaseAuth.authStateChanges();

  User? fetchCurrentUser() => _firebaseAuth.currentUser;

  bool checkIsUserAuthorized() => _firebaseAuth.currentUser != null;
}
