import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hotel_savior/src/data/entities/serializable_reservation/serializable_reservation.dart';
import 'package:injectable/injectable.dart';

const _reservationsCollectionName = 'reservation';

@injectable
class RoomsReservationsApi {
  RoomsReservationsApi(this._firebaseFirestore);

  final FirebaseFirestore _firebaseFirestore;

  Future<List<SerializableReservation>> fetchRoomsReservations({
    Query<Map<String, dynamic>> Function(
      CollectionReference<Map<String, dynamic>>,
    )? filter,
  }) async {
    final roomReservationsCollection =
        _firebaseFirestore.collection(_reservationsCollectionName);

    final filteredRoomReservationsCollection = filter != null
        ? await filter(roomReservationsCollection).get()
        : await roomReservationsCollection.get();

    return filteredRoomReservationsCollection.docs
        .map((e) => SerializableReservation.fromJson(e.data()))
        .toList();
  }
}
