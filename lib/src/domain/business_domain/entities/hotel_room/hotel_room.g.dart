// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HotelRoom _$$_HotelRoomFromJson(Map<String, dynamic> json) => _$_HotelRoom(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      capacity: json['capacity'] as int,
      hotelId: json['hotelId'] as String,
    );

Map<String, dynamic> _$$_HotelRoomToJson(_$_HotelRoom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'images': instance.images,
      'capacity': instance.capacity,
      'hotelId': instance.hotelId,
    };
