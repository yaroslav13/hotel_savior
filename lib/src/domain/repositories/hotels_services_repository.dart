import 'package:hotel_savior/src/domain/business_domain/entities/hotel_service/hotel_service.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel_service_type/hotel_service_type.dart';

abstract interface class HotelsServicesRepository {
  Future<List<HotelService>> fetchHotelServiceByType(
    HotelServiceType serviceType,
  );

  Future<List<HotelService>> fetchHotelServiceByHotelId(String hotelId);
}
