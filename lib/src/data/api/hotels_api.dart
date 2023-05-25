import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hotel_savior/src/data/entities/serializable_hotel/serializable_hotel.dart';
import 'package:injectable/injectable.dart';

const _hotelsCollectionName = 'hotels';

@injectable
class HotelsApi {
  HotelsApi(this._firebaseFirestore);

  final FirebaseFirestore _firebaseFirestore;

  Future<List<(String, SerializableHotel)>> fetchHotels({
    Query<Map<String, dynamic>> Function(
      CollectionReference<Map<String, dynamic>>,
    )? filter,
  }) async {
    final hotelsSnapshot = _firebaseFirestore.collection(_hotelsCollectionName);
    final filteredHotelsSnapshot = filter != null
        ? await filter(hotelsSnapshot).get()
        : await hotelsSnapshot.get();

    return filteredHotelsSnapshot.docs
        .map((doc) => (doc.id, SerializableHotel.fromJson(doc.data())))
        .toList();
  }

  Future<Map<String, dynamic>> fetchHotelById(String id) async {
    final hotelSnapshot = await _firebaseFirestore
        .collection(_hotelsCollectionName)
        .doc(id)
        .get();

    //ignore: avoid-non-null-assertion
    return hotelSnapshot.data()!;
  }
}
