part of 'services_location_visualizer_bloc.dart';

@freezed
class ServicesLocationVisualizerEvent with _$ServicesLocationVisualizerEvent {
  const factory ServicesLocationVisualizerEvent.started({
    required ExploreCategory exploreCategory,
  }) = _Started;

  const factory ServicesLocationVisualizerEvent.onServiceSelected({
    required (Hotel, HotelService) selectedHotelService,
  }) = _OnServiceSelected;

  const factory ServicesLocationVisualizerEvent.onHotelSelected({
    required Hotel selectedHotel,
  }) = _OnHotelSelected;
}
