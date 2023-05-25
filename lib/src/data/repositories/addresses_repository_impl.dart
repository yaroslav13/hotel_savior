import 'package:geocoding/geocoding.dart';
import 'package:hotel_savior/src/domain/repositories/addresses_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AddressesRepository)
class AddressesRepositoryImpl implements AddressesRepository {
  @override
  Future<String?> fetchHotelAddressByCoordinates(
    (double, double) coordinates,
  ) async {
    final placemarks = await placemarkFromCoordinates(
      coordinates.$1,
      coordinates.$2,
    );

    return placemarks.first.name;
  }
}
