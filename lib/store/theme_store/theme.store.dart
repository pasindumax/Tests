import 'package:pasindu_sample_app/injection_container.dart';
import 'package:pasindu_sample_app/theme/theme_type.dart';
import 'package:pasindu_sample_app/theme/theme_values/base_theme_config.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/theme_config.dart'
    as pasindu_sample_theme_config;
import 'package:mobx/mobx.dart';

part 'theme.store.g.dart';

class ThemeStore = _ThemeStore with _$ThemeStore;

abstract class _ThemeStore with Store {
  @observable
  BaseThemeConfig tc = di<pasindu_sample_theme_config.ThemeConfig>();

  @action
  void setThemeConfig(ThemeType themeType) {
    switch (themeType) {
      case ThemeType.pasinduSampleTheme:
        tc = di<pasindu_sample_theme_config.ThemeConfig>();
        break;
    }
  }
}
