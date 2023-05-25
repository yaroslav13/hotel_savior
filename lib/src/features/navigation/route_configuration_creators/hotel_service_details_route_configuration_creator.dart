import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel/hotel.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel_service/hotel_service.dart';
import 'package:hotel_savior/src/features/hotel_service_details/hotel_service_details_screen.dart';
import 'package:hotel_savior/src/features/navigation/navigation_key_container/navigation_key_container.dart';
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/base_route_configuration_creator.dart';
import 'package:hotel_savior/src/features/navigation/transitions/slide_animated_transition.dart';
import 'package:injectable/injectable.dart';

@injectable
class HotelServiceDetailsRouteConfigurationCreator
    extends BaseRouteConfigurationCreator {
  HotelServiceDetailsRouteConfigurationCreator(
      this._rootNavigationKeyContainer);

  final RootNavigationKeyContainer _rootNavigationKeyContainer;

  @override
  GoRouterPageBuilder? get pageBuilder =>
      (context, state) => const SlideAnimatedTransition().buildPage(
            context,
            state,
            (_, state) {
              //ignore: avoid-non-null-assertion
              final extraAsMap = state.extra! as Map<String, dynamic>;
              final hotel = extraAsMap['hotel'] as Hotel;
              final hotelService = extraAsMap['hotelService'] as HotelService?;

              return HotelServiceDetailsScreen(
                hotel: hotel,
                hotelService: hotelService,
              );
            },
          );

  @override
  GlobalKey<NavigatorState>? get parentNavigatorKey =>
      _rootNavigationKeyContainer.key;
}
