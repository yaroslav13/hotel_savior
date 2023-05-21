import 'package:firebase_core/firebase_core.dart';
//import 'package:hotel_savior/firebase_options.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseCoreModule {
  @preResolve
  @singleton
  Future<FirebaseApp> get firebaseApp => Firebase.initializeApp();
}
