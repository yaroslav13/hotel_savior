import 'package:hotel_savior/src/domain/base/base_mapper.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel/hotel.dart';
import 'package:hotel_savior/src/features/common/offers_carousel/entities/offer_item.dart';
import 'package:injectable/injectable.dart';

@injectable
class OfferItemFromHotelMapper implements BaseMapper<Hotel, OfferItem> {
  @override
  OfferItem map(Hotel param) {
    return OfferItem(
      name: param.name,
      imageUrl: param.images.first,
      place: '${param.country}, ${param.city}',
    );
  }
}
