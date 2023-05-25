import 'package:hotel_savior/src/domain/base/base_interactor.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel/hotel.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel_service/hotel_service.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel_service_type/hotel_service_type.dart';
import 'package:hotel_savior/src/domain/repositories/hotels_repository.dart';
import 'package:hotel_savior/src/domain/repositories/hotels_services_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchHotelsServicesByTypeInteractor
    implements BaseInteractor<List<(Hotel, HotelService)>, HotelServiceType> {
  FetchHotelsServicesByTypeInteractor(
    this._hotelsRepository,
    this._hotelsServicesRepository,
  );

  final HotelsRepository _hotelsRepository;
  final HotelsServicesRepository _hotelsServicesRepository;

  @override
  Future<List<(Hotel, HotelService)>> call(HotelServiceType param) async {
    final hotelsServices =
        await _hotelsServicesRepository.fetchHotelServiceByType(param);

    final hotelsAndServices = <(Hotel, HotelService)>[];
    await Future.forEach<HotelService>(hotelsServices, (hotelService) async {
      final hotel =
          await _hotelsRepository.fetchHotelById(hotelService.hotelId);
      hotelsAndServices.add((hotel, hotelService));
    });

    return hotelsAndServices;
  }
}
