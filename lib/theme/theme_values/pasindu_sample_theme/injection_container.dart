import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/components_theme_data.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/colors.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/font_sizes.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/fonts.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/color_palatte.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/text_themes.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/theme_config.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/dimensions.dart';
import 'package:get_it/get_it.dart';

Future<void>? setup(GetIt di) async {
  di.registerLazySingleton(() => ColorPalette());
  di.registerLazySingleton(() => Colors(palette: di()));
  di.registerLazySingleton(() => Fonts());
  di.registerLazySingleton(() => FontSizes());
  di.registerLazySingleton(() => TextThemes());
  di.registerLazySingleton(() => Dimensions());
  di.registerLazySingleton(() => ThemeConfig());
  di.registerLazySingleton(() => ComponentsThemeData(
      colors: di(), fonts: di(), textThemes: di(), dimensions: di()));
}
