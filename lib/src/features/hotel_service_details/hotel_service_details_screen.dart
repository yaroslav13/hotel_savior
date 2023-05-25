import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel/hotel.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel_service/hotel_service.dart';
import 'package:hotel_savior/src/features/base/bloc_binder.dart';
import 'package:hotel_savior/src/features/base/bloc_helper.dart';
import 'package:hotel_savior/src/features/extensions/build_context_dependencies_x.dart';
import 'package:hotel_savior/src/features/hotel_service_details/hotel_service_details_bloc.dart';
import 'package:hotel_savior/src/features/theme/colors_container.dart';
import 'package:html/parser.dart';

part 'widgets/service_expandable_description.dart';
part 'widgets/service_images_carousel.dart';

const _mapViewZoom = 15.0;

class HotelServiceDetailsScreen extends StatelessWidget {
  const HotelServiceDetailsScreen({
    required this.hotel,
    this.hotelService,
    super.key,
  });

  final Hotel hotel;
  final HotelService? hotelService;

  @override
  Widget build(BuildContext context) {
    return BlocBinder<HotelServiceDetailsEvent, HotelServiceDetailsState,
        HotelServiceDetailsBloc>(
      onCreate: (bloc) => bloc.add(
        HotelServiceDetailsEvent.started(hotel: hotel),
      ),
      child: _HotelServiceDetailsView(
        hotel: hotel,
        hotelService: hotelService,
      ),
    );
  }
}

class _HotelServiceDetailsView extends StatelessWidget {
  const _HotelServiceDetailsView({
    required this.hotel,
    this.hotelService,
  });

  final Hotel hotel;
  final HotelService? hotelService;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(hotelService?.name ?? hotel.name),
      ),
      body: SafeArea(
        child: Column(
          children: [
            _ServiceImagesCarousel(
              imagesUrls: hotelService?.images ?? hotel.images,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _ServiceExpandableDescription(
                      description:
                          hotelService?.description ?? hotel.description,
                    ),
                    20.verticalSpace,
                    _MapView(hotel: hotel),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MapView extends StatelessWidget
    with
        BlocHelper<HotelServiceDetailsBloc, HotelServiceDetailsEvent,
            HotelServiceDetailsState> {
  const _MapView({
    required this.hotel,
  });

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16).r,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(16)).r,
          child: observe(
            buildWhen: (previous, current) =>
                previous.address != current.address,
            builder: (context, state) {
              return GoogleMap(
                myLocationButtonEnabled: false,
                initialCameraPosition: CameraPosition(
                  target: LatLng(
                    hotel.coordinates.$1,
                    hotel.coordinates.$2,
                  ),
                  zoom: _mapViewZoom,
                ),
                markers: {
                  Marker(
                    markerId: MarkerId(hotel.id),
                    infoWindow: InfoWindow(
                      title: hotel.name,
                      snippet: state.address,
                    ),
                    position: LatLng(
                      hotel.coordinates.$1,
                      hotel.coordinates.$2,
                    ),
                  ),
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
