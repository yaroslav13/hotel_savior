part of 'hotel_service_details_bloc.dart';

@freezed
class HotelServiceDetailsState with _$HotelServiceDetailsState {
  const factory HotelServiceDetailsState({
    String? address,
    @Default(<String>[]) List<String> selectedDescriptionSections,
  }) = _HotelServiceDetailsState;
}
