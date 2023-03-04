import 'package:pasindu_sample_app/injection_container.dart';
import 'package:pasindu_sample_app/theme/theme_values/base_colors.dart';
import 'package:pasindu_sample_app/theme/theme_values/base_font_sizes.dart';
import 'package:pasindu_sample_app/theme/theme_values/base_fonts.dart';
import 'package:pasindu_sample_app/theme/theme_values/base_text_themes.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/font_sizes.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/fonts.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/colors.dart'
    as pasindu_sample_theme;
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/color_palatte.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextThemes extends BaseTextThemes {
  BaseFonts fonts = di<Fonts>();
  BaseFontSizes fontSizes = di<FontSizes>();
  BaseColors colors = di<pasindu_sample_theme.Colors>();

  @override
  TextTheme? get accentTextTheme {
    return textTheme?.copyWith();
  }

  @override
  TextTheme? get primaryTextTheme {
    return textTheme?.copyWith();
  }

  @override
  TextTheme? get textTheme {
    return typography?.black.copyWith(
      headline1: TextStyle(
        fontSize: fontSizes.h1.sp,
        fontWeight: FontWeight.w700,
        fontFamily: fonts.primaryFontFamily,
        fontStyle: FontStyle.normal,
        color: ColorPalette.textColor,
        height: 1,
      ),
      headline2: TextStyle(
          fontSize: fontSizes.h2,
          fontWeight: FontWeight.w700,
          fontFamily: fonts.primaryFontFamily,
          color: ColorPalette.textColor,
          fontStyle: FontStyle.normal,
          height: 20 / fontSizes.h2),
      headline3: TextStyle(
          fontSize: fontSizes.h3,
          fontWeight: FontWeight.w700,
          fontFamily: fonts.primaryFontFamily,
          color: ColorPalette.textColor,
          fontStyle: FontStyle.normal,
          height: 1),
      headline4: TextStyle(
          fontSize: fontSizes.h4,
          fontWeight: FontWeight.w700,
          fontFamily: fonts.primaryFontFamily,
          color: ColorPalette.textColor,
          fontStyle: FontStyle.normal,
          height: 22.73 / fontSizes.h4),
      headline5: TextStyle(
          fontSize: fontSizes.h5,
          fontWeight: FontWeight.w800,
          fontFamily: fonts.primaryFontFamily,
          color: ColorPalette.textColor,
          fontStyle: FontStyle.normal,
          height: 18.26 / fontSizes.h5),
      bodyText1: TextStyle(
          fontSize: fontSizes.body1,
          fontWeight: FontWeight.w400,
          fontFamily: fonts.primaryFontFamily,
          color: ColorPalette.textColor,
          fontStyle: FontStyle.normal,
          height: 20 / fontSizes.body1),
      bodyText2: TextStyle(
          fontSize: fontSizes.body2,
          fontWeight: FontWeight.w400,
          fontFamily: fonts.primaryFontFamily,
          color: ColorPalette.textColor,
          fontStyle: FontStyle.normal,
          height: 21 / fontSizes.body2),
      subtitle1: TextStyle(
          fontSize: fontSizes.subTitle1,
          fontWeight: FontWeight.w700,
          fontFamily: fonts.primaryFontFamily,
          color: ColorPalette.textColor,
          fontStyle: FontStyle.normal,
          height: 18 / fontSizes.subTitle1),
    );
  }

  @override
  Typography? get typography => Typography.material2018();
}
