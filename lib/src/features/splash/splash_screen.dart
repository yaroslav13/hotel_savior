import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/membership_status/membership_status.dart';
import 'package:hotel_savior/src/features/base/bloc_binder.dart';
import 'package:hotel_savior/src/features/base/bloc_helper.dart';
import 'package:hotel_savior/src/features/extensions/build_context_assets_x.dart';
import 'package:hotel_savior/src/features/extensions/build_context_colors_x.dart';
import 'package:hotel_savior/src/features/extensions/build_context_navigation_x.dart';
import 'package:hotel_savior/src/features/navigation/routes/app_root_routes.dart';
import 'package:hotel_savior/src/features/navigation/routes/app_sub_routes.dart';
import 'package:hotel_savior/src/features/resources/app_images/app_image.dart';
import 'package:hotel_savior/src/features/splash/splash_bloc.dart';

const _scaleAnimationDuration = Duration(milliseconds: 350);

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocBinder<SplashEvent, SplashState, SplashBloc>(
        onCreate: (bloc) => bloc.add(const SplashEvent.started()),
        child: const _SplashView(),
      );
}

class _SplashView extends StatelessWidget
    with BlocHelper<SplashBloc, SplashEvent, SplashState> {
  const _SplashView();

  bool _isAuthorizationStatusChanged(
    SplashState previous,
    SplashState current,
  ) =>
      previous.isUserAuthorized != current.isUserAuthorized &&
      current.isUserAuthorized != null;

  bool _isLogoResized(SplashState previous, SplashState current) =>
      previous.logoScaleFactor != current.logoScaleFactor;

  void _onAuthorizationStatusChanged(
    BuildContext context,
    SplashState state,
  ) {
    // ignore: avoid-non-null-assertion
    if (!state.isUserAuthorized!) {
      context.navigate(AppRootRoutes.login);
    } else {
      //ignore: avoid-non-null-assertion
      switch (state.membershipStatus!) {
        case MembershipStatus.active:
          context.navigate(AppRootRoutes.home);

        ///Maybe in a future it will be different screens
        case MembershipStatus.inactive:
        case MembershipStatus.expired:
          context.navigate(AppSubRoutes.membershipActivation);
      }
    }
  }

  @override
  Widget build(BuildContext context) => listen(
        listenWhen: _isAuthorizationStatusChanged,
        listener: _onAuthorizationStatusChanged,
        child: Scaffold(
          backgroundColor: context.colors.titaniumYellow,
          body: Center(
            child: observe(
              buildWhen: _isLogoResized,
              builder: (context, state) => AnimatedScale(
                scale: state.logoScaleFactor,
                duration: _scaleAnimationDuration,
                curve: Curves.bounceInOut,
                child: SvgPicture.asset(
                  context.getImageAssetPath(AppImage.logo),
                ),
              ),
            ),
          ),
        ),
      );
}
