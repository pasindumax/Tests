import 'package:flutter/material.dart';
import 'package:pasindu_sample_app/theme/theme_values/theme_color_variation.dart';

abstract class BaseColors {
  abstract ThemeColorVariation themeColorVariation;
  abstract ThemeColorVariation secondaryThemeColorVariation;

  ///
  /// BASE THEME COLORS
  ///
  abstract Color primaryColor;
  abstract Color accentColor;
  abstract MaterialColor primarySwatch;
  abstract Brightness? brightness;
  abstract Brightness? primaryColorBrightness;
  abstract Color? primaryColorLight;
  abstract Color? primaryColorDark;
  abstract Brightness? accentColorBrightness;
  abstract Color? canvasColor;
  abstract Color? shadowColor;
  abstract Color? scaffoldBackgroundColor;
  abstract Color? bottomAppBarColor;
  abstract Color? cardColor;
  abstract Color? dividerColor;
  abstract Color? focusColor;
  abstract Color? hoverColor;
  abstract Color? highlightColor;
  abstract Color? splashColor;
  abstract Color? selectedRowColor;
  abstract Color? unselectedWidgetColor;
  abstract Color? disabledColor;
  abstract Color? buttonColor;
  abstract Color? secondaryHeaderColor;
  abstract Color? backgroundColor;
  abstract Color? dialogBackgroundColor;
  abstract Color? indicatorColor;
  abstract Color? hintColor;
  abstract Color? errorColor;
  abstract Color? toggleableActiveColor;
}
