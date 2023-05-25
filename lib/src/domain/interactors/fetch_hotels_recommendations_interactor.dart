import 'package:hotel_savior/src/domain/base/base_no_argument_interactor.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/gender/gender.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel/hotel.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel_room/hotel_room.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel_service_type/hotel_service_type.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/relationship_status/relationship_status.dart';
import 'package:hotel_savior/src/domain/repositories/hotels_repository.dart';
import 'package:hotel_savior/src/domain/repositories/hotels_rooms_offers_repository.dart';
import 'package:hotel_savior/src/domain/repositories/hotels_services_repository.dart';
import 'package:hotel_savior/src/domain/repositories/rooms_reservations_repository.dart';
import 'package:hotel_savior/src/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

const _recommendedRoomsLimit = 100;
const _recommendedHotelsLimit = 10;

@injectable
class FetchHotelsRecommendationsInteractor
    implements BaseNoArgumentInteractor<List<Hotel>> {
  FetchHotelsRecommendationsInteractor(
    this._hotelsRepository,
    this._userRepository,
    this._hotelsServicesRepository,
    this._hotelsRoomsOffersRepository,
    this._roomsReservationsRepository,
  );

  final HotelsRepository _hotelsRepository;
  final UserRepository _userRepository;
  final HotelsServicesRepository _hotelsServicesRepository;
  final HotelsRoomsOffersRepository _hotelsRoomsOffersRepository;
  final RoomsReservationsRepository _roomsReservationsRepository;

  @override
  Future<List<Hotel>> call() async {
    final hotelsWithRecommendedRoomsIds =
        await _fetchHotelsWithRecommendedRoomsIds();

    final hotelsIdsWithServicesTypes =
        await _findServiceTypesForHotels(hotelsWithRecommendedRoomsIds);

    final limitedCountOfHotelsIdsWithServicesTypes =
        hotelsIdsWithServicesTypes.entries.take(_recommendedHotelsLimit);

    final filteredHotelsIdsByUserDetails = await _filterHotelByUserDetails(
      Map.fromEntries(limitedCountOfHotelsIdsWithServicesTypes),
    );

    final recommendedHotels = <Hotel>[];
    await Future.forEach(
      filteredHotelsIdsByUserDetails.take(_recommendedHotelsLimit),
      (hotelId) async {
        final hotel = await _hotelsRepository.fetchHotelById(hotelId);
        recommendedHotels.add(hotel);
      },
    );

    return recommendedHotels;
  }

  Future<List<String>> _fetchHotelsWithRecommendedRoomsIds() async {
    final roomsRecommendations = await _hotelsRoomsOffersRepository
        .fetchRecommendedHotelRooms(_recommendedRoomsLimit);

    final availableRooms = <HotelRoom>[];

    await Future.forEach(roomsRecommendations, (room) async {
      final isRoomAvailable = await _isHotelRoomAvailable(room.id);

      if (isRoomAvailable) {
        availableRooms.add(room);
      }
    });

    if (availableRooms.isEmpty) {
      final allHotels = await _hotelsRepository.fetchHotelsVenues();

      return allHotels.map((e) => e.id).toList();
    } else {
      return availableRooms.map((e) => e.hotelId).toList();
    }
  }

  Future<bool> _isHotelRoomAvailable(
    String roomId,
  ) async {
    final reservations =
        await _roomsReservationsRepository.fetchReservationsOfRoom(roomId);

    return reservations.isEmpty;
  }

  Future<List<String>> _filterHotelByUserDetails(
    Map<String, List<HotelServiceType>> mapHotelIdToServiceTypes,
  ) async {
    final currentUser = await _userRepository.fetchCurrentUser();

    final serviceTypesToFilter = <HotelServiceType>[];

    if (currentUser.kidsCount > 0) {
      serviceTypesToFilter.add(HotelServiceType.pool);
    }

    final relationshipStatus = currentUser.relationshipStatus;

    if (relationshipStatus == RelationshipStatus.married ||
        relationshipStatus == RelationshipStatus.inRelationship) {
      serviceTypesToFilter.add(HotelServiceType.restaurant);
    }

    if (currentUser.gender == Gender.male) {
      serviceTypesToFilter.add(HotelServiceType.gym);
    }

    final filteredEntries = mapHotelIdToServiceTypes.entries.where((entry) {
      return entry.value.any(serviceTypesToFilter.contains);
    }).toList()
      ..sort(
        (a, b) => _findCountOfRequestedServices(serviceTypesToFilter, b.value)
            .compareTo(
          _findCountOfRequestedServices(serviceTypesToFilter, a.value),
        ),
      );

    return filteredEntries.map((e) => e.key).toList();
  }

  Future<Map<String, List<HotelServiceType>>> _findServiceTypesForHotels(
    List<String> hotelsIds,
  ) async {
    final mapHotelIdToServiceTypes = <String, List<HotelServiceType>>{};

    await Future.forEach(hotelsIds, (id) async {
      final hotelServices =
          await _hotelsServicesRepository.fetchHotelServiceByHotelId(id);

      final hotelServiceTypes =
          hotelServices.map((e) => e.serviceType).toList();
      mapHotelIdToServiceTypes.addAll({
        id: hotelServiceTypes,
      });
    });

    final sortedEntries = mapHotelIdToServiceTypes.entries
        .toList(growable: false)
      ..sort((a, b) => b.value.length.compareTo(a.value.length));

    return Map.fromEntries(sortedEntries);
  }

  int _findCountOfRequestedServices(
    List<HotelServiceType> requestedServices,
    List<HotelServiceType> hotelServices,
  ) {
    var count = 0;

    requestedServices.forEach((requestedService) {
      if (hotelServices.contains(requestedService)) {
        count++;
      }
    });

    return count;
  }
}
