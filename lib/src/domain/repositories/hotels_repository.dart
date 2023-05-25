import 'package:hotel_savior/src/domain/business_domain/entities/hotel/hotel.dart';

abstract interface class HotelsRepository {
  Future<List<Hotel>> fetchLatestHotelsVenues(int count);
  Future<Hotel> fetchHotelById(String id);
  Future<List<Hotel>> fetchHotelsVenues();
}
