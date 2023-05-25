// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HotelService _$$_HotelServiceFromJson(Map<String, dynamic> json) =>
    _$_HotelService(
      name: json['name'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      description: json['description'] as String,
      hotelId: json['hotelId'] as String,
      serviceType: $enumDecode(_$HotelServiceTypeEnumMap, json['serviceType']),
    );

Map<String, dynamic> _$$_HotelServiceToJson(_$_HotelService instance) =>
    <String, dynamic>{
      'name': instance.name,
      'images': instance.images,
      'description': instance.description,
      'hotelId': instance.hotelId,
      'serviceType': _$HotelServiceTypeEnumMap[instance.serviceType]!,
    };

const _$HotelServiceTypeEnumMap = {
  HotelServiceType.gym: 'gym',
  HotelServiceType.bar: 'bar',
  HotelServiceType.restaurant: 'restaurant',
  HotelServiceType.spa: 'spa',
  HotelServiceType.pool: 'pool',
};
