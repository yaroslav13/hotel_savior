import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

const _hotelRoomsOffersCollectionName = 'hotel_room_offers';

@injectable
class HotelsRoomsOffersApi {
  HotelsRoomsOffersApi(this._firebaseFirestore);

  final FirebaseFirestore _firebaseFirestore;

  Future<List<Map<String, dynamic>>> fetchHotelsRoomsOffers({
    Query<Map<String, dynamic>> Function(
      CollectionReference<Map<String, dynamic>>,
    )? filter,
  }) async {
    final roomOffersCollection =
        _firebaseFirestore.collection(_hotelRoomsOffersCollectionName);

    final filteredRoomOffersCollection = filter != null
        ? await filter(roomOffersCollection).get()
        : await roomOffersCollection.get();

    return filteredRoomOffersCollection.docs
        .map(
          (e) => {
            ...e.data(),
            'id': e.id,
          },
        )
        .toList();
  }
}
