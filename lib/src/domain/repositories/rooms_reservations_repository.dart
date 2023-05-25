import 'package:hotel_savior/src/domain/business_domain/entities/room_reservation/room_reservation.dart';

abstract interface class RoomsReservationsRepository {
  Future<List<RoomReservation>> fetchReservationsOfRoom(
    String roomOfferId,
  );

  Future<List<RoomReservation>> fetchReservationsOfCurrentUser();
}
