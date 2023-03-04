import 'package:get_it/get_it.dart';
import 'package:pasindu_sample_app/helpers/currency_helper/currency_helper.dart';

Future<void>? setup(GetIt di) async {
  di.registerLazySingleton(() => CurrencyHelper());
}
