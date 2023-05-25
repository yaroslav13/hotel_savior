import 'package:firebase_auth/firebase_auth.dart';
import 'package:hotel_savior/src/data/api/hotels_services_api.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel_service/hotel_service.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel_service_type/hotel_service_type.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/unknown_exception.dart';
import 'package:hotel_savior/src/domain/repositories/hotels_services_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HotelsServicesRepository)
class HotelsServicesRepositoryImpl implements HotelsServicesRepository {
  HotelsServicesRepositoryImpl(this._hotelsServicesApi);

  final HotelsServicesApi _hotelsServicesApi;

  @override
  Future<List<HotelService>> fetchHotelServiceByType(
    HotelServiceType serviceType,
  ) async {
    try {
      final hotelServiceData =
          await _hotelsServicesApi.fetchHotelServicesByType(
        serviceType.name,
      );

      return hotelServiceData.map(HotelService.fromJson).toList();
    } on FirebaseException {
      throw const UnknownException();
    }
  }
  
  @override
  Future<List<HotelService>> fetchHotelServiceByHotelId(String hotelId) async {
    try {
      final hotelServiceData =
          await _hotelsServicesApi.fetchHotelServicesByHotelId(hotelId);

      return hotelServiceData.map(HotelService.fromJson).toList();
    } on FirebaseException {
      throw const UnknownException();
    }
  }
}
