import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:pasindu_sample_app/helpers/connectivity_helper/connectivity_helper.dart';
import 'package:pasindu_sample_app/helpers/currency_helper/currency_helper.dart';
import 'package:pasindu_sample_app/helpers/validator/validator.dart';
import 'package:uuid/uuid.dart';
import 'package:pasindu_sample_app/helpers/validator/injection_container.dart'
    as validator_di;

Future<void>? setup(GetIt di) async {
  //http client
  di.registerLazySingleton(() => http.Client());

  //uuid
  di.registerLazySingleton(() => const Uuid());

  //connectivity
  di.registerLazySingleton(
      () => ConnectivityHelper(connectivity: Connectivity()));

  //currency helper
  di.registerLazySingleton(() => CurrencyHelper());

  //validator
  validator_di.setup(di);
}
