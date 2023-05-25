part of 'hotel_service_details_bloc.dart';

@freezed
class HotelServiceDetailsEvent with _$HotelServiceDetailsEvent {
  const factory HotelServiceDetailsEvent.started({
    required Hotel hotel,
  }) = _Started;
  const factory HotelServiceDetailsEvent.descriptionSectionPressed({
    required String header,
  }) =
      _DescriptionSectionPressed;
}
