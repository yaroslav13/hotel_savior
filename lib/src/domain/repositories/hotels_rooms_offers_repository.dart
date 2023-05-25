import 'package:hotel_savior/src/domain/business_domain/entities/hotel_room/hotel_room.dart';

abstract interface class HotelsRoomsOffersRepository {
  Future<List<HotelRoom>> fetchRecommendedHotelRooms(int limit);
}
