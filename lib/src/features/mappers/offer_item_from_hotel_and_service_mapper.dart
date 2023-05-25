import 'package:hotel_savior/src/domain/base/base_mapper.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel/hotel.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel_service/hotel_service.dart';
import 'package:hotel_savior/src/features/common/offers_carousel/entities/offer_item.dart';
import 'package:injectable/injectable.dart';

@injectable
class OfferItemFromHotelAndServiceMapper
    implements BaseMapper<(Hotel, HotelService), OfferItem> {
  @override
  OfferItem map((Hotel, HotelService) param) {
    final (hotel, service) = param;

    return OfferItem(
      name: service.name,
      place: '${hotel.country}, ${hotel.city}',
      imageUrl: service.images.first,
    );
  }
}
