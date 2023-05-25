import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

const _membershipStatusCollectionName = 'membership_status';
const _membershipStatusFieldName = 'membershipStatus';

@injectable
class MembershipStatusApi {
  MembershipStatusApi(this._firebaseFirestore);

  final FirebaseFirestore _firebaseFirestore;

  late final _membershipStatusCollection =
      _firebaseFirestore.collection(_membershipStatusCollectionName);

  Future<void> createMembershipStatus({
    required String documentId,
    required String membershipStatus,
  }) async {
    await _membershipStatusCollection.doc(documentId).set({
      _membershipStatusFieldName: membershipStatus,
    });
  }

  Future<String?> fetchMembershipStatusByUserId(String id) async {
    final membershipStatusSnapshot =
        await _membershipStatusCollection.doc(id).get();

    return membershipStatusSnapshot.data()?[_membershipStatusFieldName]
        as String?;
  }

  Stream<String?> onMembershipStatusChanged(String id) {
    return _membershipStatusCollection.doc(id).snapshots().map((snapshot) {
      return snapshot.data()?[_membershipStatusFieldName] as String?;
    });
  }
}
