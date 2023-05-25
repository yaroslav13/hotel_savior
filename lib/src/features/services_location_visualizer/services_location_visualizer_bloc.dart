import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel/hotel.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel_service/hotel_service.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/unknown_exception.dart';
import 'package:hotel_savior/src/domain/interactors/fetch_hotels_interactor.dart';
import 'package:hotel_savior/src/domain/interactors/fetch_hotels_services_by_type_interactor.dart';
import 'package:hotel_savior/src/features/explore/entities/explore_category.dart';
import 'package:hotel_savior/src/features/localization/locale_keys.g.dart';
import 'package:hotel_savior/src/features/mappers/explore_category_mapper.dart';
import 'package:injectable/injectable.dart';

part 'services_location_visualizer_event.dart';
part 'services_location_visualizer_state.dart';
part 'services_location_visualizer_bloc.freezed.dart';

@injectable
class ServicesLocationVisualizerBloc extends Bloc<
    ServicesLocationVisualizerEvent, ServicesLocationVisualizerState> {
  ServicesLocationVisualizerBloc(
    this._fetchHotelsServicesByTypeInteractor,
    this._fetchHotelsInteractor,
    this._exploreCategoryMapper,
  ) : super(const ServicesLocationVisualizerState()) {
    on<_Started>(_onStarted);
    on<_OnServiceSelected>(_onServiceSelected);
    on<_OnHotelSelected>(_onHotelSelected);
  }

  final FetchHotelsServicesByTypeInteractor
      _fetchHotelsServicesByTypeInteractor;
  final FetchHotelsInteractor _fetchHotelsInteractor;

  final ExploreCategoryMapper _exploreCategoryMapper;

  Future<void> _onStarted(
    _Started event,
    Emitter<ServicesLocationVisualizerState> emit,
  ) async {
    try {
      emit(state.copyWith(isLoading: true));

      if (event.exploreCategory != ExploreCategory.hotels) {
        final hotelsServices = await _fetchHotelsServicesByTypeInteractor(
          _exploreCategoryMapper.reverseMap(event.exploreCategory),
        );

        if (hotelsServices.isEmpty) {
          emit(
            state.copyWith(
              isLoading: false,
              errorMessageLocaleKey: LocaleKeys.servicesNotFound,
            ),
          );

          return;
        }

        emit(
          state.copyWith(
            hotelsServices: hotelsServices,
            isLoading: false,
          ),
        );
      } else {
        final hotels = await _fetchHotelsInteractor();

        if (hotels.isEmpty) {
          emit(
            state.copyWith(
              isLoading: false,
              errorMessageLocaleKey: LocaleKeys.hotelsNotFound,
            ),
          );

          return;
        }

        emit(
          state.copyWith(
            hotels: hotels,
            isLoading: false,
          ),
        );
      }
    } on UnknownException {
      emit(
        state.copyWith(
          isLoading: false,
          errorMessageLocaleKey: LocaleKeys.unknownError,
        ),
      );
    }
  }

  Future<void> _onServiceSelected(
    _OnServiceSelected event,
    Emitter<ServicesLocationVisualizerState> emit,
  ) async {
    emit(state.copyWith(selectedHotelService: event.selectedHotelService));
  }

  Future<void> _onHotelSelected(
    _OnHotelSelected event,
    Emitter<ServicesLocationVisualizerState> emit,
  ) async {
    emit(state.copyWith(selectedHotel: event.selectedHotel));
  }
}
