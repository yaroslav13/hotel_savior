import 'package:hotel_savior/src/domain/base/base_bi_mapper.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel_service_type/hotel_service_type.dart';
import 'package:hotel_savior/src/features/explore/entities/explore_category.dart';
import 'package:injectable/injectable.dart';

@injectable
class ExploreCategoryMapper
    implements BaseBiMapper<HotelServiceType, ExploreCategory> {
  @override
  ExploreCategory map(HotelServiceType param) {
    return switch (param) {
      HotelServiceType.restaurant => ExploreCategory.restaurants,
      HotelServiceType.gym => ExploreCategory.gyms,
      HotelServiceType.pool => ExploreCategory.pools,
      HotelServiceType.spa => ExploreCategory.spas,
      HotelServiceType.bar => ExploreCategory.bars,
    };
  }

  @override
  HotelServiceType reverseMap(ExploreCategory param) {
    return switch (param) {
      ExploreCategory.restaurants => HotelServiceType.restaurant,
      ExploreCategory.gyms => HotelServiceType.gym,
      ExploreCategory.pools => HotelServiceType.pool,
      ExploreCategory.spas => HotelServiceType.spa,
      ExploreCategory.bars => HotelServiceType.bar,
      ExploreCategory.hotels =>
        throw Exception('Cannot reverse map ExploreCategory.hotels'),
    };
  }
}
