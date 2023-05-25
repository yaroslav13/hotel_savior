import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_savior/src/domain/interactors/fetch_reservations_of_current_user_interactor.dart';
import 'package:injectable/injectable.dart';

part 'qr_code_event.dart';
part 'qr_code_state.dart';
part 'qr_code_bloc.freezed.dart';

@injectable
class QrCodeBloc extends Bloc<QrCodeEvent, QrCodeState> {
  QrCodeBloc(
    this._fetchRoomsReservationsInteractor,
  ) : super(const QrCodeState()) {
    on<_QrCodeOpened>(_onQrCodeOpened);
  }

  final FetchReservationsOfCurrentUserInteractor
      _fetchRoomsReservationsInteractor;

  Future<void> _onQrCodeOpened(
    _QrCodeOpened event,
    Emitter<QrCodeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final reservations = await _fetchRoomsReservationsInteractor();
    emit(
      state.copyWith(
        isLoading: false,
        qrCodeData: jsonEncode(reservations.map((e) => e.toJson()).toList()),
      ),
    );
  }
}
