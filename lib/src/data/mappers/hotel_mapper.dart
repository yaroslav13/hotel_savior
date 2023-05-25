import 'package:hotel_savior/src/data/entities/serializable_hotel/serializable_hotel.dart';
import 'package:hotel_savior/src/domain/base/base_mapper.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel/hotel.dart';
import 'package:injectable/injectable.dart';

@injectable
class HotelMapper implements BaseMapper<(String, SerializableHotel), Hotel> {
  @override
  Hotel map((String, SerializableHotel) param) {
    final (id, serializableHotel) = param;

    return Hotel(
      id: id,
      name: serializableHotel.name,
      description: serializableHotel.description,
      city: serializableHotel.city,
      country: serializableHotel.country,
      coordinates: serializableHotel.coordinates,
      createdAt: serializableHotel.createdAt,
      images: serializableHotel.images,
    );
  }
}
