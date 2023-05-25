import 'package:hotel_savior/src/domain/base/base_no_argument_interactor.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/room_reservation/room_reservation.dart';
import 'package:hotel_savior/src/domain/repositories/rooms_reservations_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchReservationsOfCurrentUserInteractor
    implements BaseNoArgumentInteractor<List<RoomReservation>> {
  FetchReservationsOfCurrentUserInteractor(this._roomsReservationsRepository);

  final RoomsReservationsRepository _roomsReservationsRepository;

  @override
  Future<List<RoomReservation>> call() {
    return _roomsReservationsRepository.fetchReservationsOfCurrentUser();
  }
}
