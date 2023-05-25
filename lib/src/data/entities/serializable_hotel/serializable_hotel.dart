import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_savior/src/data/entities/helper/timestamp_converter.dart';

part 'serializable_hotel.g.dart';

@JsonSerializable()
class SerializableHotel {
  const SerializableHotel({
    required this.name,
    required this.country,
    required this.city,
    required this.images,
    required this.description,
    required this.coordinates,
    required this.createdAt,
  });

  factory SerializableHotel.fromJson(Map<String, dynamic> json) =>
      _$SerializableHotelFromJson(json);

  final String name;
  final String country;
  final String city;
  final List<String> images;
  final String description;
  @GeoPointConverter()
  final (double, double) coordinates;
  @TimestampConverter()
  final DateTime createdAt;

  Map<String, dynamic> toJson() => _$SerializableHotelToJson(this);
}

class GeoPointConverter implements JsonConverter<(double, double), GeoPoint> {
  const GeoPointConverter();
  
  @override
  (double, double) fromJson(GeoPoint json) {
    return (json.latitude, json.longitude);
  }
  
  @override
  GeoPoint toJson((double, double) object) {
    return GeoPoint(object.$1, object.$2);
  }
}

