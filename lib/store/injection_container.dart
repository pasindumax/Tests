import 'package:pasindu_sample_app/store/auth_store/auth.store.dart';
import 'package:pasindu_sample_app/store/environment_store/environmental.store.dart';

import 'package:pasindu_sample_app/store/theme_store/theme.store.dart';

import 'package:get_it/get_it.dart';

Future<void> setup(GetIt di) async {
  di.registerLazySingleton(() => EnvironmentalStore());

  di.registerLazySingleton(() => ThemeStore());

  di.registerLazySingleton(() => AuthStore());
}
