import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel_room.freezed.dart';

part 'hotel_room.g.dart';

@freezed
class HotelRoom with _$HotelRoom {
  const factory HotelRoom({
    required String id,
    required String name,
    required String description,
    required List<String> images,
    required int capacity,
    required String hotelId,
  }) = _HotelRoom;

  factory HotelRoom.fromJson(Map<String, dynamic> json) =>
      _$HotelRoomFromJson(json);
}
