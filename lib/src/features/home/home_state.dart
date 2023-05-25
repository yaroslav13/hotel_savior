part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(<Hotel>[]) List<Hotel> newHotelsVenues,
    @Default(<Hotel>[]) List<Hotel> recommendedHotelsVenues,
    @Default(<(Hotel, HotelService)>[]) List<(Hotel, HotelService)> hotelsGyms,
    @Default(<(Hotel, HotelService)>[])
    List<(Hotel, HotelService)> hotelsRestaurants,
    @Default(<(Hotel, HotelService)>[]) List<(Hotel, HotelService)> hotelsSpas,
    @Default(<(Hotel, HotelService)>[]) List<(Hotel, HotelService)> hotelsPools,
    @Default(<(Hotel, HotelService)>[]) List<(Hotel, HotelService)> hotelsBars,
    @Default(false) bool isLoading,
    String? errorMessageLocaleKey,
  }) = _HomeState;
}
