// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializable_reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SerializableReservation _$SerializableReservationFromJson(
        Map<String, dynamic> json) =>
    SerializableReservation(
      hotelRoomOfferId: json['hotelRoomOfferId'] as String,
      userId: json['userId'] as String,
      numberOfPeople: json['numberOfPeople'] as int,
      arrivalDate:
          const TimestampConverter().fromJson(json['arrivalDate'] as Timestamp),
      departureDate: const TimestampConverter()
          .fromJson(json['departureDate'] as Timestamp),
    );

Map<String, dynamic> _$SerializableReservationToJson(
        SerializableReservation instance) =>
    <String, dynamic>{
      'hotelRoomOfferId': instance.hotelRoomOfferId,
      'userId': instance.userId,
      'numberOfPeople': instance.numberOfPeople,
      'arrivalDate': const TimestampConverter().toJson(instance.arrivalDate),
      'departureDate':
          const TimestampConverter().toJson(instance.departureDate),
    };
