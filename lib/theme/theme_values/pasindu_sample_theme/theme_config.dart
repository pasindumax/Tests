import 'package:flutter/material.dart';
import 'package:pasindu_sample_app/injection_container.dart';
import 'package:pasindu_sample_app/theme/theme_values/base_colors.dart';
import 'package:pasindu_sample_app/theme/theme_values/base_components_theme_data.dart';
import 'package:pasindu_sample_app/theme/theme_values/base_dimensions.dart';
import 'package:pasindu_sample_app/theme/theme_values/base_font_sizes.dart';
import 'package:pasindu_sample_app/theme/theme_values/base_fonts.dart';
import 'package:pasindu_sample_app/theme/theme_values/base_text_themes.dart';
import 'package:pasindu_sample_app/theme/theme_values/base_theme_config.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/colors.dart'
    as theme_colors;
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/dimensions.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/font_sizes.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/fonts.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/text_themes.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/components_theme_data.dart';

class ThemeConfig extends BaseThemeConfig {
  @override
  BaseColors colors = di<theme_colors.Colors>();

  @override
  BaseFonts fonts = di<Fonts>();

  @override
  BaseFontSizes fontSizes = di<FontSizes>();

  @override
  BaseTextThemes textThemes = di<TextThemes>();

  @override
  BaseComponentsThemeData componentsThemeData = di<ComponentsThemeData>();

  @override
  BaseDimensions dimensions = di<Dimensions>();

  @override
  ThemeData theme(Locale? locale) {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: colors.primaryColor,
      primarySwatch: colors.primarySwatch,
      appBarTheme: componentsThemeData.appBarTheme,
      fontFamily: getFontFamily(locale),
      textTheme: textThemes.textTheme,
      primaryTextTheme: textThemes.primaryTextTheme,
      typography: componentsThemeData.typography,
      cardTheme: componentsThemeData.cardTheme,
      bannerTheme: componentsThemeData.bannerTheme,
      bottomAppBarTheme: componentsThemeData.bottomAppBarTheme,
      bottomNavigationBarTheme: componentsThemeData.bottomNavigationBarTheme,
      bottomSheetTheme: componentsThemeData.bottomSheetTheme,
      buttonBarTheme: componentsThemeData.buttonBarTheme,
      checkboxTheme: componentsThemeData.checkboxTheme,
      chipTheme: componentsThemeData.chipTheme,
      colorScheme: componentsThemeData.colorScheme,
      dataTableTheme: componentsThemeData.dataTableTheme,
      dialogTheme: componentsThemeData.dialogTheme,
      dividerTheme: componentsThemeData.dividerTheme,
      elevatedButtonTheme: componentsThemeData.elevatedButtonTheme,
      floatingActionButtonTheme: componentsThemeData.floatingActionButtonTheme,
      inputDecorationTheme: componentsThemeData.inputDecorationTheme,
      materialTapTargetSize: componentsThemeData.materialTapTargetSize,
      navigationRailTheme: componentsThemeData.navigationRailTheme,
      outlinedButtonTheme: componentsThemeData.outlinedButtonTheme,
      pageTransitionsTheme: componentsThemeData.pageTransitionsTheme,
      popupMenuTheme: componentsThemeData.popupMenuTheme,
      primaryIconTheme: componentsThemeData.primaryIconTheme,
      radioTheme: componentsThemeData.radioTheme,
      scrollbarTheme: componentsThemeData.scrollbarTheme,
      sliderTheme: componentsThemeData.sliderTheme,
      snackBarTheme: componentsThemeData.snackBarTheme,
      switchTheme: componentsThemeData.switchTheme,
      tabBarTheme: componentsThemeData.tabBarTheme,
      textButtonTheme: componentsThemeData.textButtonTheme,
      textSelectionTheme: componentsThemeData.textSelectionTheme,
      timePickerTheme: componentsThemeData.timePickerTheme,
      tooltipTheme: componentsThemeData.tooltipTheme,
      toggleButtonsTheme: componentsThemeData.toggleButtonsTheme,
    );
  }

  String getFontFamily(Locale? locale) {
    switch (locale?.languageCode) {
      case 'en':
        return fonts.primaryFontFamily;
      case 'si':
        return fonts.secondaryFontFamily;
      case 'ta':
        return fonts.secondaryFontFamily;
      default:
        return fonts.primaryFontFamily;
    }
  }
}
