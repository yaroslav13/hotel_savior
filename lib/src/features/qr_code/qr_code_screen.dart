import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_savior/src/features/base/bloc_binder.dart';
import 'package:hotel_savior/src/features/base/bloc_helper.dart';
import 'package:hotel_savior/src/features/common/dots_loader_indicator.dart';
import 'package:hotel_savior/src/features/common/horizontal_stretched_button.dart';
import 'package:hotel_savior/src/features/extensions/build_context_dependencies_x.dart';
import 'package:hotel_savior/src/features/localization/locale_keys.g.dart';
import 'package:hotel_savior/src/features/qr_code/qr_code_bloc.dart';
import 'package:hotel_savior/src/features/resources/app_images/app_image.dart';
import 'package:hotel_savior/src/features/resources/app_images/app_image_mapper.dart';
import 'package:hotel_savior/src/features/theme/colors_container.dart';
import 'package:qr_flutter/qr_flutter.dart';

part 'widgets/front_side.dart';
part 'widgets/back_side.dart';
part 'widgets/card_foundation.dart';

class QrCodeScreen extends StatelessWidget {
  const QrCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BlocBinder<QrCodeEvent, QrCodeState, QrCodeBloc>(
      child: _QrCodeView(),
    );
  }
}

class _QrCodeView extends HookWidget with BlocHelper<QrCodeBloc, QrCodeEvent, QrCodeState> {
  const _QrCodeView();

  void _openQrCode(
    BuildContext context,
    AnimationController flipAnimationController,
  ) {
    getBoundBloc(context).add(const QrCodeEvent.qrCodeOpened());
    flipAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final flipAnimationController = useAnimationController(
      duration: const Duration(milliseconds: 270),
    );

    final flipAnimationTween = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: flipAnimationController,
        curve: Curves.easeIn,
      ),
    );

    final flipAnimation = useAnimation(flipAnimationTween);

    return Scaffold(
      body: SafeArea(
        child: Align(
          child: FractionallySizedBox(
            widthFactor: 0.9,
            heightFactor: 0.93,
            child: Transform(
              alignment: FractionalOffset.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.002)
                ..rotateY(pi * flipAnimation),
              child: flipAnimation >= 0.5
                  ? _CardFoundation(
                      child: _BackSide(
                        onBackButtonPressed: flipAnimationController.reverse,
                      ),
                    )
                  : _CardFoundation(
                      child: _FrontSide(
                        onScanMePressed: () =>
                            _openQrCode(context, flipAnimationController),
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
