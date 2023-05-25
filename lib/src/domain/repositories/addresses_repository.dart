abstract interface class AddressesRepository {
  Future<String?> fetchHotelAddressByCoordinates((double, double) coordinates);
}
