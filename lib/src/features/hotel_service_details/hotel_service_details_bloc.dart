import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel/hotel.dart';
import 'package:hotel_savior/src/domain/interactors/fetch_hotel_address_interactor.dart';
import 'package:injectable/injectable.dart';

part 'hotel_service_details_event.dart';
part 'hotel_service_details_state.dart';
part 'hotel_service_details_bloc.freezed.dart';

@injectable
class HotelServiceDetailsBloc
    extends Bloc<HotelServiceDetailsEvent, HotelServiceDetailsState> {
  HotelServiceDetailsBloc(
    this._fetchHotelAddressInteractor,
  ) : super(const HotelServiceDetailsState()) {
    on<_Started>(_onStarted);
    on<_DescriptionSectionPressed>(_onDescriptionSectionPressed);
  }

  final FetchHotelAddressInteractor _fetchHotelAddressInteractor;

  Future<void> _onStarted(
    _Started event,
    Emitter<HotelServiceDetailsState> emit,
  ) async {
    final address = await _fetchHotelAddressInteractor(event.hotel);
    emit(state.copyWith(address: address));
  }     

  void _onDescriptionSectionPressed(
    _DescriptionSectionPressed event,
    Emitter<HotelServiceDetailsState> emit,
  ) {
    if (state.selectedDescriptionSections.contains(event.header)) {
      emit(
        state.copyWith(
          selectedDescriptionSections:
              List.of(state.selectedDescriptionSections)..remove(event.header),
        ),
      );
    } else {
      emit(
        state.copyWith(
          selectedDescriptionSections:
              List.of(state.selectedDescriptionSections)..add(event.header),
        ),
      );
    }
  }
}
