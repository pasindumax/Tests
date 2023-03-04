import 'package:get_it/get_it.dart';
import 'package:pasindu_sample_app/helpers/validator/validator.dart';

Future<void>? setup(GetIt di) async {
  di.registerLazySingleton(() => Validator());
}
