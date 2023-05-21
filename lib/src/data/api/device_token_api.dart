import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

const _deviceTokensCollectionName = 'device_tokens';

@injectable
class DeviceTokenApi {
  DeviceTokenApi(this._firebaseFirestore);

  final FirebaseFirestore _firebaseFirestore;

  late final _deviceTokensCollection =
      _firebaseFirestore.collection(_deviceTokensCollectionName);

  Future<void> createDeviceToken({
    required String documentId,
    required String token,
  }) async {
    await _deviceTokensCollection.doc(documentId).set(
      <String, String>{
        'token': token,
      },
    );
  }
}
