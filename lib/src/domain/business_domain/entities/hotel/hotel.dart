import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel.freezed.dart';

@freezed
class Hotel with _$Hotel {
  const factory Hotel({
    required String id,
    required String name,
    required String country,
    required String city,
    required List<String> images,
    required String description,
    required (double, double) coordinates,
    required DateTime createdAt,
  }) = _Hotel;
}
