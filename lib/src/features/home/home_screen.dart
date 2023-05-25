import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel/hotel.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/hotel_service/hotel_service.dart';
import 'package:hotel_savior/src/features/base/bloc_binder.dart';
import 'package:hotel_savior/src/features/base/bloc_helper.dart';
import 'package:hotel_savior/src/features/common/dots_loader_indicator.dart';
import 'package:hotel_savior/src/features/common/offers_carousel/offers_carousel.dart';
import 'package:hotel_savior/src/features/extensions/build_context_dependencies_x.dart';
import 'package:hotel_savior/src/features/extensions/build_context_navigation_x.dart';
import 'package:hotel_savior/src/features/home/home_bloc.dart';
import 'package:hotel_savior/src/features/home/widgets/membership_benefits_preview_card.dart';
import 'package:hotel_savior/src/features/localization/locale_keys.g.dart';
import 'package:hotel_savior/src/features/mappers/offer_item_from_hotel_and_service_mapper.dart';
import 'package:hotel_savior/src/features/mappers/offer_item_from_hotel_mapper.dart';
import 'package:hotel_savior/src/features/navigation/routes/app_sub_routes.dart';
import 'package:hotel_savior/src/features/theme/colors_container.dart';

part 'widgets/background_wave.dart';
part 'widgets/suggestions_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBinder<HomeEvent, HomeState, HomeBloc>(
      onCreate: (bloc) => bloc.add(const HomeEvent.started()),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget
    with BlocHelper<HomeBloc, HomeEvent, HomeState> {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final colorContainers = context.getDependency<ColorsContainer>();

    return Scaffold(
      body: observe(
        buildWhen: (previous, current) =>
            previous.isLoading != current.isLoading ||
            previous.errorMessageLocaleKey != current.errorMessageLocaleKey,
        builder: (context, state) {
          final errorMessageLocaleKey = state.errorMessageLocaleKey;
          if (errorMessageLocaleKey != null) {
            ///TODO: Add error handling
            return Center(
              child: Text(
                errorMessageLocaleKey.tr(),
              ),
            );
          } else if (state.isLoading) {
            return DotsLoaderIndicator(
              color: colorContainers.blueM3LightPrimary,
            );
          } else {
            return const _Body();
          }
        },
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const _BackgroundWave(),
        Column(
          children: [
            MembershipBenefitsPreviewCard(
              onPressed: () =>
                  context.navigate(AppSubRoutes.membershipBenefits),
            ),
            _SuggestionsWidget(
              onHotelSelected: (hotel) => context.navigate(
                AppSubRoutes.hotelServiceDetails,
                extra: {
                  'hotel': hotel,
                },
              ),
              onHotelServiceSelected: (hotelsService) => context.navigate(
                AppSubRoutes.hotelServiceDetails,
                extra: {
                  'hotel': hotelsService.$1,
                  'hotelService': hotelsService.$2,
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
