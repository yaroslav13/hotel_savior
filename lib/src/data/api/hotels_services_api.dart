import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

const _hotelServicesCollectionName = 'hotel_services';
const _serviceTypeFieldName = 'serviceType';
const _hotelIdFieldName = 'hotelId';

@injectable
class HotelsServicesApi {
  HotelsServicesApi(this._firebaseFirestore);

  final FirebaseFirestore _firebaseFirestore;

  Future<List<Map<String, dynamic>>> fetchHotelServicesByType(
    String type,
  ) async {
    final querySnapshot = await _firebaseFirestore
        .collection(_hotelServicesCollectionName)
        .where(_serviceTypeFieldName, isEqualTo: type)
        .get();

    return querySnapshot.docs.map((doc) => doc.data()).toList();
  }

  Future<List<Map<String, dynamic>>> fetchHotelServicesByHotelId(
    String hotelId,
  ) async {
    final querySnapshot = await _firebaseFirestore
        .collection(_hotelServicesCollectionName)
        .where(_hotelIdFieldName, isEqualTo: hotelId)
        .get();

    return querySnapshot.docs.map((doc) => doc.data()).toList();
  }
}
