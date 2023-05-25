import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_reservation.freezed.dart';

part 'room_reservation.g.dart';

@freezed
class RoomReservation with _$RoomReservation {
  const factory RoomReservation({
    required String hotelRoomOfferId,
    required String userId,
    required int numberOfPeople,
    required DateTime arrivalDate,
    required DateTime departureDate,
  }) = _RoomReservation;

  factory RoomReservation.fromJson(Map<String, dynamic> json) =>
      _$RoomReservationFromJson(json);
}
