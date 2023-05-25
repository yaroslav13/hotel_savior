import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_savior/src/data/entities/helper/timestamp_converter.dart';

part 'serializable_reservation.g.dart';

@JsonSerializable()
class SerializableReservation {
  SerializableReservation({
    required this.hotelRoomOfferId,
    required this.userId,
    required this.numberOfPeople,
    required this.arrivalDate,
    required this.departureDate,
  });

  factory SerializableReservation.fromJson(Map<String, dynamic> json) =>
      _$SerializableReservationFromJson(json);

  final String hotelRoomOfferId;
  final String userId;
  final int numberOfPeople;

  @TimestampConverter()
  final DateTime arrivalDate;

  @TimestampConverter()
  final DateTime departureDate;

  Map<String, dynamic> toJson() => _$SerializableReservationToJson(this);
}
