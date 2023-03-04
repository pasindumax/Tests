import 'package:pasindu_sample_app/helpers/extensions/color_extension.dart';
import 'package:pasindu_sample_app/theme/theme_values/base_components_theme_data.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/colors.dart'
    as theme_colors;
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/dimensions.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/fonts.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/color_palatte.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ComponentsThemeData extends BaseComponentsThemeData {
  ComponentsThemeData(
      {required this.colors,
      required this.fonts,
      required this.textThemes,
      required this.dimensions});

  final theme_colors.Colors colors;
  final Fonts fonts;
  final TextThemes textThemes;
  final Dimensions dimensions;

  @override
  IconThemeData? get accentIconTheme {
    return const IconThemeData();
  }

  @override
  AppBarTheme? get appBarTheme {
    return const AppBarTheme(
        centerTitle: true,
        backgroundColor: ColorPalette.white,
        iconTheme: IconThemeData(color: ColorPalette.red),
        toolbarTextStyle: TextStyle());
  }

  @override
  MaterialBannerThemeData? get bannerTheme {
    return const MaterialBannerThemeData();
  }

  @override
  BottomAppBarTheme? get bottomAppBarTheme {
    return const BottomAppBarTheme();
  }

  @override
  BottomNavigationBarThemeData? get bottomNavigationBarTheme {
    return const BottomNavigationBarThemeData();
  }

  @override
  BottomSheetThemeData? get bottomSheetTheme {
    return const BottomSheetThemeData();
  }

  @override
  ButtonBarThemeData? get buttonBarTheme {
    return const ButtonBarThemeData();
  }

  @override
  CardTheme? get cardTheme {
    return CardTheme(
        elevation: 8,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.w)));
  }

  @override
  CheckboxThemeData? get checkboxTheme {
    return const CheckboxThemeData();
  }

  @override
  ChipThemeData? get chipTheme {
    return null;
  }

  @override
  ColorScheme? get colorScheme {
    return null;
  }

  @override
  DataTableThemeData? get dataTableTheme {
    return null;
  }

  @override
  DialogTheme? get dialogTheme {
    return null;
  }

  @override
  DividerThemeData? get dividerTheme {
    return null;
  }

  @override
  ElevatedButtonThemeData? get elevatedButtonTheme {
    return ElevatedButtonThemeData(
        style: ButtonStyle(
            textStyle: MaterialStateProperty.all<TextStyle>(textThemes
                    .primaryTextTheme?.headline3
                    ?.copyWith(color: ColorPalette.white) ??
                const TextStyle()),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(48),
                side: BorderSide(
                  color: ColorPalette.brand.createMaterialColor(),
                  width: 2.0,
                ),
              ),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white)));
  }

  @override
  FloatingActionButtonThemeData? get floatingActionButtonTheme {
    return null;
  }

  @override
  IconThemeData? get iconThemeData {
    return null;
  }

  @override
  InputDecorationTheme? get inputDecorationTheme {
    return null;
  }

  @override
  MaterialTapTargetSize? get materialTapTargetSize {
    return null;
  }

  @override
  NavigationRailThemeData? get navigationRailTheme {
    return null;
  }

  @override
  OutlinedButtonThemeData? get outlinedButtonTheme {
    return null;
  }

  @override
  PageTransitionsTheme? get pageTransitionsTheme {
    return null;
  }

  @override
  TargetPlatform? get platform {
    return null;
  }

  @override
  PopupMenuThemeData? get popupMenuTheme {
    return null;
  }

  @override
  IconThemeData? get primaryIconTheme {
    return null;
  }

  @override
  RadioThemeData? get radioTheme {
    return null;
  }

  @override
  ScrollbarThemeData? get scrollbarTheme {
    return null;
  }

  @override
  SliderThemeData? get sliderTheme {
    return null;
  }

  @override
  SnackBarThemeData? get snackBarTheme {
    return null;
  }

  @override
  SwitchThemeData? get switchTheme {
    return null;
  }

  @override
  TabBarTheme? get tabBarTheme {
    return null;
  }

  @override
  TextButtonThemeData? get textButtonTheme {
    return TextButtonThemeData(
        style: ButtonStyle(
            textStyle: MaterialStateProperty.all<TextStyle>(
                textThemes.primaryTextTheme?.bodyText1?.copyWith(
                        fontSize: 17.sp,
                        height: 21.47 / 17,
                        decoration: TextDecoration.underline) ??
                    const TextStyle())));
  }

  @override
  TextSelectionThemeData? get textSelectionTheme {
    return null;
  }

  @override
  TimePickerThemeData? get timePickerTheme {
    return null;
  }

  @override
  TooltipThemeData? get tooltipTheme {
    return null;
  }

  @override
  Typography? get typography {
    return Typography.material2018();
  }

  @override
  ToggleButtonsThemeData? get toggleButtonsTheme {
    return null;
  }

  @override
  ButtonThemeData? get getbuttonTheme {
    return null;
  }
}
