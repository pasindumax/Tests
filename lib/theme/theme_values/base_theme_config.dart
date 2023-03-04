import 'package:flutter/material.dart';
import 'package:pasindu_sample_app/theme/theme_values/base_colors.dart';
import 'package:pasindu_sample_app/theme/theme_values/base_components_theme_data.dart';
import 'package:pasindu_sample_app/theme/theme_values/base_dimensions.dart';
import 'package:pasindu_sample_app/theme/theme_values/base_fonts.dart';
import 'package:pasindu_sample_app/theme/theme_values/base_text_themes.dart';

import 'base_font_sizes.dart';

abstract class BaseThemeConfig {
  abstract BaseColors colors;
  abstract BaseFonts fonts;
  abstract BaseFontSizes fontSizes;
  abstract BaseTextThemes textThemes;
  abstract BaseDimensions dimensions;
  abstract BaseComponentsThemeData componentsThemeData;

  ThemeData theme(Locale? locale);
}
