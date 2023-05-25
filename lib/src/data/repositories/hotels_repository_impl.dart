import 'package:firebase_core/firebase_core.dart';
import 'package:hotel_savior/src/data/api/hotels_api.dart';
import 'package:hotel_savior/src/data/entities/serializable_hotel/serializable_hotel.dart';
import 'package:hotel_savior/src/data/mappers/hotel_mapper.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel/hotel.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/unknown_exception.dart';
import 'package:hotel_savior/src/domain/repositories/hotels_repository.dart';
import 'package:injectable/injectable.dart';

const _createdAtFieldName = 'createdAt';

@LazySingleton(as: HotelsRepository)
class HotelsRepositoryImpl implements HotelsRepository {
  HotelsRepositoryImpl(
    this._hotelsApi,
    this._hotelMapper,
  );

  final HotelsApi _hotelsApi;

  final HotelMapper _hotelMapper;

  Future<List<Hotel>> fetchHotelsVenues() async {
    try {
      final hotelsData = await _hotelsApi.fetchHotels();

      return hotelsData.map(_hotelMapper.map).toList();
    } on FirebaseException {
      throw const UnknownException();
    }
  }

  @override
  Future<List<Hotel>> fetchLatestHotelsVenues(int count) async {
    try {
      final hotelsData = await _hotelsApi.fetchHotels(
        filter: (hotelsSnapshot) =>
            hotelsSnapshot.orderBy(_createdAtFieldName).limitToLast(count),
      );

      return hotelsData.map(_hotelMapper.map).toList();
    } on FirebaseException {
      throw const UnknownException();
    }
  }

  @override
  Future<Hotel> fetchHotelById(String id) async {
    try {
      final hotelData = await _hotelsApi.fetchHotelById(id);

      final serializableHotel = SerializableHotel.fromJson(hotelData);
      
      return _hotelMapper.map((id, serializableHotel));
    } on FirebaseException {
      throw const UnknownException();
    }
  }
}
