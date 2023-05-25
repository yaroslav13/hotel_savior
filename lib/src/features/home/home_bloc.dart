import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel/hotel.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel_service/hotel_service.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel_service_type/hotel_service_type.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/unknown_exception.dart';
import 'package:hotel_savior/src/domain/interactors/fetch_hotels_recommendations_interactor.dart';
import 'package:hotel_savior/src/domain/interactors/fetch_hotels_services_by_type_interactor.dart';
import 'package:hotel_savior/src/domain/interactors/fetch_latest_hotels_venues_interactor.dart';
import 'package:hotel_savior/src/features/localization/locale_keys.g.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(
    this._fetchLatestHotelsVenuesInteractor,
    this._fetchHotelsServicesByTypeInteractor,
    this._fetchHotelsRecommendationsInteractor,
  ) : super(const HomeState()) {
    on<_Started>(_onStarted);
  }

  final FetchLatestHotelsVenuesInteractor _fetchLatestHotelsVenuesInteractor;
  final FetchHotelsServicesByTypeInteractor _fetchHotelsServicesByTypeInteractor;
  final FetchHotelsRecommendationsInteractor
      _fetchHotelsRecommendationsInteractor;

  Future<void> _onStarted(
    _Started event,
    Emitter<HomeState> emit,
  ) async {
    try {
      emit(state.copyWith(isLoading: true));

      final newHotels = await _fetchLatestHotelsVenuesInteractor();
      final hotelsGyms =
          await _fetchHotelsServicesByTypeInteractor(HotelServiceType.gym);
      final hotelsPools =
          await _fetchHotelsServicesByTypeInteractor(HotelServiceType.pool);
      final hotelRestaurants = await _fetchHotelsServicesByTypeInteractor(
        HotelServiceType.restaurant,
      );
      final hotelsSpas = await _fetchHotelsServicesByTypeInteractor(
        HotelServiceType.spa,
      );
      final hotelsBars = await _fetchHotelsServicesByTypeInteractor(
        HotelServiceType.bar,
      );
      final recommendedHotelsVenues =
          await _fetchHotelsRecommendationsInteractor();

      emit(state.copyWith(
        newHotelsVenues: newHotels,
        hotelsGyms: hotelsGyms,
        hotelsPools: hotelsPools,
        hotelsRestaurants: hotelRestaurants,
        hotelsSpas: hotelsSpas,
        hotelsBars: hotelsBars,
        recommendedHotelsVenues: recommendedHotelsVenues,
        isLoading: false,
      ));
    } on UnknownException {
      emit(
        state.copyWith(
          isLoading: false,
          errorMessageLocaleKey: LocaleKeys.somethingWentWrong,
        ),
      );
    }
  }
}
