import 'package:hotel_savior/src/data/api/rooms_reservations_api.dart';
import 'package:hotel_savior/src/data/mappers/room_reservation_mapper.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/room_reservation/room_reservation.dart';
import 'package:hotel_savior/src/domain/repositories/auth_repository.dart';
import 'package:hotel_savior/src/domain/repositories/rooms_reservations_repository.dart';
import 'package:injectable/injectable.dart';

const _userIdFieldName = 'userId';
const _hotelRoomOfferIdFieldName = 'hotelRoomOfferId';

@LazySingleton(as: RoomsReservationsRepository)
class RoomsReservationsRepositoryImpl implements RoomsReservationsRepository {
  RoomsReservationsRepositoryImpl(
    this._roomsReservationsApi,
    this._authRepository,
    this._roomReservationMapper,
  );

  final RoomsReservationsApi _roomsReservationsApi;
  final AuthRepository _authRepository;

  final RoomReservationMapper _roomReservationMapper;

  @override
  Future<List<RoomReservation>> fetchReservationsOfCurrentUser() async {
    final serializableReservations =
        await _roomsReservationsApi.fetchRoomsReservations(
      filter: (roomsReservationsCollection) =>
          roomsReservationsCollection.where(
        _userIdFieldName,
        isEqualTo: _authRepository.authorizedUserId,
      ),
    );

    final roomReservation =
        serializableReservations.map(_roomReservationMapper.map);

    return roomReservation
        .where((e) => e.departureDate.isAfter(DateTime.now()))
        .toList();
  }

  @override
  Future<List<RoomReservation>> fetchReservationsOfRoom(
    String roomOfferId,
  ) async {
    final serializableReservations =
        await _roomsReservationsApi.fetchRoomsReservations(
      filter: (roomsReservationsCollection) =>
          roomsReservationsCollection.where(
        _hotelRoomOfferIdFieldName,
        isEqualTo: roomOfferId,
      ),
    );

    final roomReservation =
        serializableReservations.map(_roomReservationMapper.map);

    return roomReservation
        .where((e) => e.departureDate.isAfter(DateTime.now()))
        .toList();
  }
}
