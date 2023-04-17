import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

const _usersCollectionName = 'users';

@injectable
class UserApi {
  UserApi(this._firebaseFirestore);

  final FirebaseFirestore _firebaseFirestore;

  late final _usersCollection =
      _firebaseFirestore.collection(_usersCollectionName);

  Future<Map<String, dynamic>?> getUserById(String id) async {
    final currentUserSnapshot = await _usersCollection.doc(id).get();

    return currentUserSnapshot.data();
  }

  Future<void> createUser({
    required String documentId,
    required Map<String, dynamic> data,
  }) async {
    await _firebaseFirestore
        .collection(_usersCollectionName)
        .doc(documentId)
        .set(data);
  }
}
