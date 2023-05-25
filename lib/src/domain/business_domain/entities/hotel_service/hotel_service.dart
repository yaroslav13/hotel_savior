import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel_service_type/hotel_service_type.dart';

part 'hotel_service.freezed.dart';

part 'hotel_service.g.dart';

@freezed
class HotelService with _$HotelService {
  const factory HotelService({
    required String name,
    required List<String> images,
    required String description,
    required String hotelId,
    required HotelServiceType serviceType,
  }) = _HotelService;

  factory HotelService.fromJson(Map<String, dynamic> json) =>
      _$HotelServiceFromJson(json);
}
