// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializable_hotel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SerializableHotel _$SerializableHotelFromJson(Map<String, dynamic> json) =>
    SerializableHotel(
      name: json['name'] as String,
      country: json['country'] as String,
      city: json['city'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      description: json['description'] as String,
      coordinates:
          const GeoPointConverter().fromJson(json['coordinates'] as GeoPoint),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$SerializableHotelToJson(SerializableHotel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
      'city': instance.city,
      'images': instance.images,
      'description': instance.description,
      'coordinates': const GeoPointConverter().toJson(instance.coordinates),
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
