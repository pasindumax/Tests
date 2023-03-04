import 'package:pasindu_sample_app/theme/theme_values/base_images.dart';
import 'package:get_it/get_it.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/injection_container.dart'
    as pasindu_sample_theme_di;

Future<void>? setup(GetIt di) async {
  pasindu_sample_theme_di.setup(di);
  di.registerLazySingleton(() => BaseImages());
}
