part of '../home_screen.dart';

class _SuggestionsWidget extends StatelessWidget
    with BlocHelper<HomeBloc, HomeEvent, HomeState> {
  const _SuggestionsWidget({
    required this.onHotelSelected,
    required this.onHotelServiceSelected,
  });

  final ValueChanged<Hotel> onHotelSelected;
  final ValueChanged<(Hotel, HotelService)> onHotelServiceSelected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.only(top: 20, bottom: 10).r,
        physics: const BouncingScrollPhysics(),
        children: [
          _NewHotelVenuesCarousel(
            onSelected: onHotelSelected,
          ),
          20.verticalSpace,
          _RecommendedHotelsVenuesCarousel(
            onSelected: onHotelSelected,
          ),
          20.verticalSpace,
          _GymsCarousel(
            onSelected: onHotelServiceSelected,
          ),
          20.verticalSpace,
          _RestaurantsCarousel(
            onSelected: onHotelServiceSelected,
          ),
          20.verticalSpace,
          _PoolsCarousel(
            onSelected: onHotelServiceSelected,
          ),
          20.verticalSpace,
          _BarsCarousel(
            onSelected: onHotelServiceSelected,
          ),
          20.verticalSpace,
          _SpasCarousel(
            onSelected: onHotelServiceSelected,
          ),
        ],
      ),
    );
  }
}

class _NewHotelVenuesCarousel extends StatelessWidget
    with BlocHelper<HomeBloc, HomeEvent, HomeState> {
  const _NewHotelVenuesCarousel({
    required this.onSelected,
  });

  final ValueChanged<Hotel> onSelected;

  @override
  Widget build(BuildContext context) {
    final offerItemMapper = context.getDependency<OfferItemFromHotelMapper>();

    return observe(
      buildWhen: (previous, current) =>
          previous.newHotelsVenues != current.newHotelsVenues,
      builder: (context, state) {
        final newHotelsVenues = state.newHotelsVenues;

        if (newHotelsVenues.isEmpty) {
          return const SizedBox.shrink();
        }

        return OffersCarousel(
          title: LocaleKeys.newHotelSaviorVenues.tr(),
          offers: newHotelsVenues.map(offerItemMapper.map).toList(),
          onSelected: (index) => onSelected(newHotelsVenues[index]),
        );
      },
    );
  }
}

class _GymsCarousel extends StatelessWidget
    with BlocHelper<HomeBloc, HomeEvent, HomeState> {
  const _GymsCarousel({
    required this.onSelected,
  });

  final ValueChanged<(Hotel, HotelService)> onSelected;

  @override
  Widget build(BuildContext context) {
    final offerItemMapper =
        context.getDependency<OfferItemFromHotelAndServiceMapper>();

    return observe(
      buildWhen: (previous, current) =>
          previous.hotelsGyms != current.hotelsGyms,
      builder: (context, state) {
        final hotelsGyms = state.hotelsGyms;

        if (hotelsGyms.isEmpty) {
          return const SizedBox.shrink();
        }

        return OffersCarousel(
          title: LocaleKeys.hotelSaviorGyms.tr(),
          offers: hotelsGyms.map(offerItemMapper.map).toList(),
          onSelected: (index) => onSelected(hotelsGyms[index]),
        );
      },
    );
  }
}

class _PoolsCarousel extends StatelessWidget
    with BlocHelper<HomeBloc, HomeEvent, HomeState> {
  const _PoolsCarousel({
    required this.onSelected,
  });

  final ValueChanged<(Hotel, HotelService)> onSelected;

  @override
  Widget build(BuildContext context) {
    final offerItemMapper =
        context.getDependency<OfferItemFromHotelAndServiceMapper>();

    return observe(
      buildWhen: (previous, current) =>
          previous.hotelsPools != current.hotelsPools,
      builder: (context, state) {
        final hotelsPools = state.hotelsPools;

        if (hotelsPools.isEmpty) {
          return const SizedBox.shrink();
        }

        return OffersCarousel(
          title: LocaleKeys.hotelSaviorPools.tr(),
          offers: hotelsPools.map(offerItemMapper.map).toList(),
          onSelected: (index) => onSelected(hotelsPools[index]),
        );
      },
    );
  }
}

class _RestaurantsCarousel extends StatelessWidget
    with BlocHelper<HomeBloc, HomeEvent, HomeState> {
  const _RestaurantsCarousel({
    required this.onSelected,
  });

  final ValueChanged<(Hotel, HotelService)> onSelected;

  @override
  Widget build(BuildContext context) {
    final offerItemMapper =
        context.getDependency<OfferItemFromHotelAndServiceMapper>();

    return observe(
      buildWhen: (previous, current) =>
          previous.hotelsRestaurants != current.hotelsRestaurants,
      builder: (context, state) {
        final hotelsRestaurants = state.hotelsRestaurants;

        if (hotelsRestaurants.isEmpty) {
          return const SizedBox.shrink();
        }

        return OffersCarousel(
          title: LocaleKeys.hotelSaviorRestaurants.tr(),
          offers: hotelsRestaurants.map(offerItemMapper.map).toList(),
          onSelected: (index) => onSelected(hotelsRestaurants[index]),
        );
      },
    );
  }
}

class _BarsCarousel extends StatelessWidget
    with BlocHelper<HomeBloc, HomeEvent, HomeState> {
  const _BarsCarousel({
    required this.onSelected,
  });

  final ValueChanged<(Hotel, HotelService)> onSelected;

  @override
  Widget build(BuildContext context) {
    final offerItemMapper =
        context.getDependency<OfferItemFromHotelAndServiceMapper>();

    return observe(
      buildWhen: (previous, current) =>
          previous.hotelsBars != current.hotelsBars,
      builder: (context, state) {
        final hotelsBars = state.hotelsBars;

        if (hotelsBars.isEmpty) {
          return const SizedBox.shrink();
        }

        return OffersCarousel(
          title: LocaleKeys.hotelSaviorBars.tr(),
          offers: hotelsBars.map(offerItemMapper.map).toList(),
          onSelected: (index) => onSelected(hotelsBars[index]),
        );
      },
    );
  }
}

class _SpasCarousel extends StatelessWidget
    with BlocHelper<HomeBloc, HomeEvent, HomeState> {
  const _SpasCarousel({
    required this.onSelected,
  });

  final ValueChanged<(Hotel, HotelService)> onSelected;

  @override
  Widget build(BuildContext context) {
    final offerItemMapper =
        context.getDependency<OfferItemFromHotelAndServiceMapper>();

    return observe(
      buildWhen: (previous, current) =>
          previous.hotelsSpas != current.hotelsSpas,
      builder: (context, state) {
        final hotelsSpas = state.hotelsSpas;

        if (hotelsSpas.isEmpty) {
          return const SizedBox.shrink();
        }

        return OffersCarousel(
          title: LocaleKeys.hotelSaviorSpas.tr(),
          offers: hotelsSpas.map(offerItemMapper.map).toList(),
          onSelected: (index) => onSelected(hotelsSpas[index]),
        );
      },
    );
  }
}

class _RecommendedHotelsVenuesCarousel extends StatelessWidget
    with BlocHelper<HomeBloc, HomeEvent, HomeState> {
  const _RecommendedHotelsVenuesCarousel({
    required this.onSelected,
  });

  final ValueChanged<Hotel> onSelected;

  @override
  Widget build(BuildContext context) {
    final offerItemMapper = context.getDependency<OfferItemFromHotelMapper>();

    return observe(
      buildWhen: (previous, current) =>
          previous.recommendedHotelsVenues != current.recommendedHotelsVenues,
      builder: (context, state) {
        final recommendedHotelsVenues = state.recommendedHotelsVenues;

        if (recommendedHotelsVenues.isEmpty) {
          return const SizedBox.shrink();
        }

        return OffersCarousel(
          title: LocaleKeys.hotelsRecommendedForYou.tr(),
          offers: recommendedHotelsVenues.map(offerItemMapper.map).toList(),
          onSelected: (index) => onSelected(recommendedHotelsVenues[index]),
        );
      },
    );
  }
}
