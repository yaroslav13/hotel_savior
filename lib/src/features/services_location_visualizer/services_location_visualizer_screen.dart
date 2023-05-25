import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel/hotel.dart';
import 'package:hotel_savior/src/features/base/bloc_binder.dart';
import 'package:hotel_savior/src/features/base/bloc_helper.dart';
import 'package:hotel_savior/src/features/common/dots_loader_indicator.dart';
import 'package:hotel_savior/src/features/explore/entities/explore_category.dart';
import 'package:hotel_savior/src/features/extensions/build_context_dependencies_x.dart';
import 'package:hotel_savior/src/features/localization/locale_keys.g.dart';
import 'package:hotel_savior/src/features/mappers/offer_item_from_hotel_and_service_mapper.dart';
import 'package:hotel_savior/src/features/mappers/offer_item_from_hotel_mapper.dart';
import 'package:hotel_savior/src/features/services_location_visualizer/services_location_visualizer_bloc.dart';
import 'package:hotel_savior/src/features/services_location_visualizer/widgets/hotels_offers_carousel/hotels_offers_carousel.dart';
import 'package:hotel_savior/src/features/theme/colors_container.dart';

const _cameraZoom = 18.0;

const CameraPosition _defaultCameraPosition = CameraPosition(
  target: LatLng(37.42796133580664, -122.085749655962),
  zoom: _cameraZoom,
);

class ServicesLocationVisualizerScreen extends StatelessWidget {
  const ServicesLocationVisualizerScreen({
    required this.category,
    super.key,
  });

  final ExploreCategory category;

  @override
  Widget build(BuildContext context) {
    return BlocBinder<ServicesLocationVisualizerEvent,
        ServicesLocationVisualizerState, ServicesLocationVisualizerBloc>(
      onCreate: (bloc) => bloc.add(
        ServicesLocationVisualizerEvent.started(exploreCategory: category),
      ),
      child: _ServicesLocationVisualizerView(category: category),
    );
  }
}

class _ServicesLocationVisualizerView extends StatelessWidget
    with
        BlocHelper<ServicesLocationVisualizerBloc,
            ServicesLocationVisualizerEvent, ServicesLocationVisualizerState> {
  const _ServicesLocationVisualizerView({
    required this.category,
  });

  final ExploreCategory category;

  Future<void> _focusCameraOnSelectedService({
    required Completer<GoogleMapController> controller,
    required Hotel relatedHotel,
  }) async {
    final mapController = await controller.future;
    await mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(
            relatedHotel.coordinates.$1,
            relatedHotel.coordinates.$2,
          ),
          zoom: _cameraZoom,
        ),
      ),
    );
  }

  ///TODO: Refactor this build method
  @override
  Widget build(BuildContext context) {
    final controller = Completer<GoogleMapController>();
    final colorsContainer = context.getDependency<ColorsContainer>();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
        centerTitle: true,
      ),
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          listen(
            listenWhen: (previous, current) =>
                previous.selectedHotelService != current.selectedHotelService ||
                previous.selectedHotel != current.selectedHotel,
            listener: (context, state) {
              final selectedHotelService = state.selectedHotelService;
              final selectedHotel = state.selectedHotel;

              if ((category != ExploreCategory.hotels &&
                      selectedHotelService != null) ||
                  (category == ExploreCategory.hotels &&
                      selectedHotel != null)) {
                unawaited(
                  _focusCameraOnSelectedService(
                    controller: controller,
                    //ignore: avoid-non-null-assertion
                    relatedHotel: selectedHotelService?.$1 ?? selectedHotel!,
                  ),
                );
              }
            },
            child: observe(
              buildWhen: (previous, current) =>
                  previous.selectedHotelService !=
                      current.selectedHotelService ||
                  previous.selectedHotel != current.selectedHotel,
              builder: (context, state) {
                final selectedHotel = category == ExploreCategory.hotels
                    ? state.selectedHotel
                    : state.selectedHotelService?.$1;

                return GoogleMap(
                  initialCameraPosition: _defaultCameraPosition,
                  zoomControlsEnabled: false,
                  onMapCreated: controller.complete,
                  myLocationButtonEnabled: false,
                  markers: selectedHotel != null
                      ? {
                          Marker(
                            markerId: MarkerId(selectedHotel.id),
                            position: LatLng(
                              selectedHotel.coordinates.$1,
                              selectedHotel.coordinates.$2,
                            ),
                          ),
                        }
                      : {},
                );
              },
            ),
          ),
          observe(
            buildWhen: (previous, current) =>
                previous.hotelsServices != current.hotelsServices ||
                previous.hotels != current.hotels,
            builder: (context, state) {
              final hotelsServices = state.hotelsServices;
              final hotels = state.hotels;

              if ((category == ExploreCategory.hotels && hotels.isEmpty) ||
                  (category != ExploreCategory.hotels &&
                      hotelsServices.isEmpty)) {
                return const SizedBox.shrink();
              }

              final offerMapper = category != ExploreCategory.hotels
                  ? context.getDependency<OfferItemFromHotelAndServiceMapper>()
                  : context.getDependency<OfferItemFromHotelMapper>();

              return HotelsOffersCarousel(
                offers: category != ExploreCategory.hotels
                    ? hotelsServices
                        .map(
                          (e) => (offerMapper
                                  as OfferItemFromHotelAndServiceMapper)
                              .map(e),
                        )
                        .toList()
                    : hotels
                        .map(
                          (e) =>
                              (offerMapper as OfferItemFromHotelMapper).map(e),
                        )
                        .toList(),
                //ignore: prefer-extracting-callbacks
                onPageChanged: (index) {
                  final bloc = getBoundBloc(context);
              
                  if (category != ExploreCategory.hotels) {
                    bloc.add(
                      ServicesLocationVisualizerEvent.onServiceSelected(
                        selectedHotelService: hotelsServices[index],
                      ),
                    );
                  } else {
                    bloc.add(
                      ServicesLocationVisualizerEvent.onHotelSelected(
                        selectedHotel: hotels[index],
                      ),
                    );
                  }
                },
              );
            },
          ),
          observe(
            buildWhen: (previous, current) =>
                previous.isLoading != current.isLoading,
            builder: (context, state) {
              if (!state.isLoading) {
                return const SizedBox.shrink();
              }

              return IgnorePointer(
                ignoring: state.isLoading,
                child: DecoratedBox(
                  decoration: const BoxDecoration(color: Colors.black12),
                  child: DotsLoaderIndicator(
                    color: colorsContainer.blueM3LightPrimary,
                  ),
                ),
              );
            },
          ),
          observe(
            buildWhen: (previous, current) =>
                previous.errorMessageLocaleKey != current.errorMessageLocaleKey,
            builder: (context, state) {
              final errorMessageLocaleKey = state.errorMessageLocaleKey;
              if (errorMessageLocaleKey == null) {
                return const SizedBox.shrink();
              }

              return IgnorePointer(
                ignoring: state.isLoading,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.black12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        errorMessageLocaleKey.tr(),
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      8.verticalSpace,
                      FilledButton(
                        onPressed: () => context.pop(),
                        child: const Text('Back'),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

extension _ExploreCategoryX on ExploreCategory {
  String get title {
    return switch (this) {
      ExploreCategory.hotels => LocaleKeys.hotels.tr(),
      ExploreCategory.restaurants => LocaleKeys.restaurants.tr(),
      ExploreCategory.bars => LocaleKeys.bars.tr(),
      ExploreCategory.pools => LocaleKeys.pools.tr(),
      ExploreCategory.gyms => LocaleKeys.gyms.tr(),
      ExploreCategory.spas => LocaleKeys.spas.tr(),
    };
  }
}
