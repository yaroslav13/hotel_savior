// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomReservation _$$_RoomReservationFromJson(Map<String, dynamic> json) =>
    _$_RoomReservation(
      hotelRoomOfferId: json['hotelRoomOfferId'] as String,
      userId: json['userId'] as String,
      numberOfPeople: json['numberOfPeople'] as int,
      arrivalDate: DateTime.parse(json['arrivalDate'] as String),
      departureDate: DateTime.parse(json['departureDate'] as String),
    );

Map<String, dynamic> _$$_RoomReservationToJson(_$_RoomReservation instance) =>
    <String, dynamic>{
      'hotelRoomOfferId': instance.hotelRoomOfferId,
      'userId': instance.userId,
      'numberOfPeople': instance.numberOfPeople,
      'arrivalDate': instance.arrivalDate.toIso8601String(),
      'departureDate': instance.departureDate.toIso8601String(),
    };
