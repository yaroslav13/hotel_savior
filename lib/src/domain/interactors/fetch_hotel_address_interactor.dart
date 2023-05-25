import 'package:hotel_savior/src/domain/base/base_interactor.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel/hotel.dart';
import 'package:hotel_savior/src/domain/repositories/addresses_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchHotelAddressInteractor implements BaseInteractor<String, Hotel> {
  FetchHotelAddressInteractor(this._addressesRepository);

  final AddressesRepository _addressesRepository;

  @override
  Future<String> call(Hotel param) async {
    try {
    final address = await _addressesRepository
        .fetchHotelAddressByCoordinates(param.coordinates);

    return address ?? '${param.country}, ${param.city}';    
    } on Exception {
      return '${param.country}, ${param.city}';
    }
  }
}
