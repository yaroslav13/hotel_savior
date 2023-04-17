import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_savior/src/features/base/bloc_binder.dart';
import 'package:hotel_savior/src/features/base/bloc_helper.dart';
import 'package:hotel_savior/src/features/extensions/build_context_assets_x.dart';
import 'package:hotel_savior/src/features/extensions/build_context_colors_x.dart';
import 'package:hotel_savior/src/features/extensions/build_context_navigation_x.dart';
import 'package:hotel_savior/src/features/navigation/routes/app_root_routes.dart';
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

  bool _isDesignationDefined(SplashState previous, SplashState current) =>
      previous.isUserAuthorized != current.isUserAuthorized &&
      current.isUserAuthorized != null;

  bool _isLogoResized(SplashState previous, SplashState current) =>
      previous.logoScaleFactor != current.logoScaleFactor;

  @override
  Widget build(BuildContext context) => listen(
        listenWhen: _isDesignationDefined,
        listener: (_, state) => context.navigate(
          //ignore: avoid-non-null-assertion
          state.isUserAuthorized! ? AppRootRoutes.home : AppRootRoutes.login,
        ),
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
