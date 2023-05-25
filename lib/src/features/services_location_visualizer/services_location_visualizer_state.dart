part of 'services_location_visualizer_bloc.dart';

@freezed
class ServicesLocationVisualizerState with _$ServicesLocationVisualizerState {
  const factory ServicesLocationVisualizerState({
    @Default(<(Hotel, HotelService)>[])
    List<(Hotel, HotelService)> hotelsServices,
    @Default(<Hotel>[]) List<Hotel> hotels,
    Hotel? selectedHotel,
    (Hotel, HotelService)? selectedHotelService,
    @Default(false) bool isLoading,
    String? errorMessageLocaleKey,
  }) = _ServicesLocationVisualizerState;
}
