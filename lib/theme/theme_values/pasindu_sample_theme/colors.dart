import 'package:flutter/material.dart';
import 'package:pasindu_sample_app/helpers/extensions/color_extension.dart';
import 'package:pasindu_sample_app/theme/theme_values/base_colors.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/color_palatte.dart';
import 'package:pasindu_sample_app/theme/theme_values/theme_color_variation.dart';

class Colors extends BaseColors {
  final ColorPalette palette;

  Colors({required this.palette});
  @override
  ThemeColorVariation themeColorVariation = ThemeColorVariation(
      primary: ColorPalette.brand,
      warning: ColorPalette.orange,
      error: ColorPalette.red,
      success: ColorPalette.brand, //Palette.green
      info: ColorPalette.blue);

  @override
  ThemeColorVariation secondaryThemeColorVariation = ThemeColorVariation(
      primary: ColorPalette.white,
      warning: ColorPalette.white,
      error: ColorPalette.white,
      success: ColorPalette.white, //Palette.green
      info: ColorPalette.textColor);

  @override
  MaterialColor primarySwatch = ColorPalette.brand
      .createMaterialColor(); //Palette.green.createMaterialColor();

  @override
  Brightness? accentColorBrightness;

  @override
  Color? backgroundColor = ColorPalette.white;

  @override
  Color? bottomAppBarColor;

  @override
  Brightness? brightness;

  @override
  Color? buttonColor = ColorPalette.brand;

  @override
  Color? canvasColor;

  @override
  Color? cardColor = ColorPalette.white;

  @override
  Color? dialogBackgroundColor;

  @override
  Color? disabledColor;

  @override
  Color? dividerColor;

  @override
  Color? errorColor;

  @override
  Color? focusColor;

  @override
  Color? highlightColor;

  @override
  Color? hintColor;

  @override
  Color? hoverColor;

  @override
  Color? indicatorColor;

  @override
  Brightness? primaryColorBrightness;

  @override
  Color? primaryColorDark;

  @override
  Color? primaryColorLight = ColorPalette.white;

  @override
  Color? scaffoldBackgroundColor;

  @override
  Color? secondaryHeaderColor;

  @override
  Color? selectedRowColor;

  @override
  Color? shadowColor;

  @override
  Color? splashColor;

  @override
  Color? toggleableActiveColor;

  @override
  Color? unselectedWidgetColor;

  @override
  Color accentColor = ColorPalette.red;

  @override
  Color primaryColor = ColorPalette.brand; //Palette.blue
}
