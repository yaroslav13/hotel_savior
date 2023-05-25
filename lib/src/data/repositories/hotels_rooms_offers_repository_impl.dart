import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hotel_savior/src/data/api/hotels_rooms_offers_api.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel_room/hotel_room.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/relationship_status/relationship_status.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/unknown_exception.dart';
import 'package:hotel_savior/src/domain/repositories/hotels_rooms_offers_repository.dart';
import 'package:hotel_savior/src/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

const _capacityFieldName = 'capacity';

@LazySingleton(as: HotelsRoomsOffersRepository)
class HotelsRoomsOffersRepositoryImpl implements HotelsRoomsOffersRepository {
  HotelsRoomsOffersRepositoryImpl(
    this._hotelsRoomsOffersApi,
    this._userRepository,
  );

  final HotelsRoomsOffersApi _hotelsRoomsOffersApi;

  final UserRepository _userRepository;

  @override
  Future<List<HotelRoom>> fetchRecommendedHotelRooms(int limit) async {
    try {
      final currentUser = await _userRepository.fetchCurrentUser();
      final relationshipStatus = currentUser.relationshipStatus;
      final hasRelationship =
          relationshipStatus == RelationshipStatus.married ||
              relationshipStatus == RelationshipStatus.inRelationship;

      final hotelRoomsData = await _hotelsRoomsOffersApi.fetchHotelsRoomsOffers(
        filter: (hotelRoomsOffersCollection) => hotelRoomsOffersCollection
            .where(
              _capacityFieldName,
              isGreaterThanOrEqualTo:
                  currentUser.kidsCount + (hasRelationship ? 2 : 1),
            )
            .limit(limit),
      );

      return hotelRoomsData.map(HotelRoom.fromJson).toList();
    } on FirebaseException {
      throw const UnknownException();
    }
  }
}
