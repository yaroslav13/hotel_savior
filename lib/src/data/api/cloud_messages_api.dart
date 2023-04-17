import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

@injectable
class CloudMessagesApi {
  CloudMessagesApi(this._firebaseMessaging);

  final FirebaseMessaging _firebaseMessaging;

  Future<String?> fetchDeviceIdentifier() => _firebaseMessaging.getToken();

  Future<NotificationSettings> askPermission() =>
      _firebaseMessaging.requestPermission();

  Stream<RemoteMessage> get onMessage => FirebaseMessaging.onMessage;
}
