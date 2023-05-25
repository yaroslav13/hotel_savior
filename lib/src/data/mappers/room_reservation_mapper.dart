import 'package:hotel_savior/src/data/entities/serializable_reservation/serializable_reservation.dart';
import 'package:hotel_savior/src/domain/base/base_mapper.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/room_reservation/room_reservation.dart';
import 'package:injectable/injectable.dart';

@injectable
class RoomReservationMapper
    implements BaseMapper<SerializableReservation, RoomReservation> {
  @override
  RoomReservation map(SerializableReservation param) {
    return RoomReservation(
      hotelRoomOfferId: param.hotelRoomOfferId,
      userId: param.userId,
      numberOfPeople: param.numberOfPeople,
      arrivalDate: param.arrivalDate,
      departureDate: param.departureDate,
    );
  }
}
