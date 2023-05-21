import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_savior/src/features/theme/colors_container.dart';
import 'package:hotel_savior/src/features/theme/material_properties/elevated_button/elevated_button_elevation.dart';
import 'package:injectable/injectable.dart';

@injectable
class AppThemeFactory {
  AppThemeFactory(
    this._colorsContainer,
    this._screenUtil,
    this._elevatedButtonElevation,
  );

  final ColorsContainer _colorsContainer;
  final ScreenUtil _screenUtil;

  /// Meterial properties for [ElevatedButton]
  final ElevatedButtonElevation _elevatedButtonElevation;

  ThemeData create() {
    final theme = FlexThemeData.light(
      scheme: FlexScheme.blueM3,
      useMaterial3: true,
      useMaterial3ErrorColors: true,
    );

    final basicTextTheme = theme.textTheme;

    return theme.copyWith(
      textTheme: _composeTextTheme(basicTextTheme),
      inputDecorationTheme: _composeInputDecorationTheme(basicTextTheme),
      elevatedButtonTheme: _elevatedButtonThemeData,
      listTileTheme: _listTileThemeData,
    );
  }

  InputDecorationTheme _composeInputDecorationTheme(
    TextTheme textTheme,
  ) {
    const _borderWidth = 2.0;

    final borderRadius = const BorderRadius.all(
      Radius.circular(8),
    ).r;

    return InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: const BorderSide(width: _borderWidth),
      ),
      fillColor: _colorsContainer.white,
      filled: true,
      labelStyle: _createLabelLarge(textTheme),
      contentPadding: const EdgeInsets.all(12).r,
    );
  }

  ElevatedButtonThemeData get _elevatedButtonThemeData =>
      ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: _elevatedButtonElevation,
          padding: MaterialStatePropertyAll(
            const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 12,
            ).r,
          ),
        ),
      );

  ListTileThemeData get _listTileThemeData => ListTileThemeData(
        selectedTileColor: _colorsContainer.belgion,
        selectedColor: _colorsContainer.black,
        textColor: _colorsContainer.blueM3LightPrimary,
      );

  TextTheme _composeTextTheme(TextTheme basicTheme) => const TextTheme()
      .copyWith(
        displayLarge: _createDisplayLarge(basicTheme),
        displayMedium: _createDisplayMedium(basicTheme),
        displaySmall: _createDisplaySmall(basicTheme),
        headlineLarge: _createHeadlineLarge(basicTheme),
        headlineMedium: _createHeadlineMedium(basicTheme),
        headlineSmall: _createHeadlineSmall(basicTheme),
        titleLarge: _createTitleLarge(basicTheme),
        titleMedium: _createTitleMedium(basicTheme),
        titleSmall: _createTitleSmall(basicTheme),
        labelLarge: _createLabelLarge(basicTheme),
        labelMedium: _createLabelMedium(basicTheme),
        labelSmall: _createLabelSmall(basicTheme),
        bodyLarge: _createBodyLarge(basicTheme),
        bodyMedium: _createBodyMedium(basicTheme),
        bodySmall: _createBodySmall(basicTheme),
      )
      .apply(fontSizeFactor: _screenUtil.scaleText);

  TextStyle _createDisplayLarge(TextTheme basicTheme) => GoogleFonts.montserrat(
        textStyle: basicTheme.displayLarge,
        fontSize: 57.sp,
        fontWeight: FontWeight.w400,
      );

  TextStyle _createDisplayMedium(TextTheme basicTheme) =>
      GoogleFonts.montserrat(
        textStyle: basicTheme.displayMedium,
        fontSize: 45.sp,
        fontWeight: FontWeight.w400,
      );

  TextStyle _createDisplaySmall(TextTheme basicTheme) => GoogleFonts.montserrat(
        textStyle: basicTheme.displaySmall,
        fontSize: 36.sp,
        fontWeight: FontWeight.w400,
      );

  TextStyle _createHeadlineLarge(TextTheme basicTheme) =>
      GoogleFonts.montserrat(
        textStyle: basicTheme.headlineLarge,
        fontSize: 32,
        fontWeight: FontWeight.w400,
      );

  TextStyle _createHeadlineMedium(TextTheme basicTheme) =>
      GoogleFonts.montserrat(
        textStyle: basicTheme.headlineMedium,
        fontSize: 28.sp,
        fontWeight: FontWeight.w400,
      );

  TextStyle _createHeadlineSmall(TextTheme basicTheme) =>
      GoogleFonts.montserrat(
        textStyle: basicTheme.headlineSmall,
        fontSize: 24.sp,
        fontWeight: FontWeight.w400,
      );

  TextStyle _createTitleLarge(TextTheme basicTheme) => GoogleFonts.montserrat(
        textStyle: basicTheme.titleLarge,
        fontSize: 22.sp,
        fontWeight: FontWeight.w400,
      );

  TextStyle _createTitleMedium(TextTheme basicTheme) => GoogleFonts.montserrat(
        textStyle: basicTheme.titleMedium,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      );

  TextStyle _createTitleSmall(TextTheme basicTheme) => GoogleFonts.montserrat(
        textStyle: basicTheme.titleSmall,
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      );

  TextStyle _createLabelLarge(TextTheme basicTheme) => GoogleFonts.montserrat(
        textStyle: basicTheme.labelLarge,
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      );

  TextStyle _createLabelMedium(TextTheme basicTheme) => GoogleFonts.montserrat(
        textStyle: basicTheme.labelMedium,
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
      );

  TextStyle _createLabelSmall(TextTheme basicTheme) => GoogleFonts.montserrat(
        textStyle: basicTheme.labelSmall,
        fontSize: 11.sp,
        fontWeight: FontWeight.w500,
      );

  TextStyle _createBodyLarge(TextTheme basicTheme) => GoogleFonts.montserrat(
        textStyle: basicTheme.bodyLarge,
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
      );

  TextStyle _createBodyMedium(TextTheme basicTheme) => GoogleFonts.montserrat(
        textStyle: basicTheme.bodyMedium,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      );

  TextStyle _createBodySmall(TextTheme basicTheme) => GoogleFonts.montserrat(
        textStyle: basicTheme.bodySmall,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      );
}
