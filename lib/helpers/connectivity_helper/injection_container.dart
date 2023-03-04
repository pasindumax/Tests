import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:pasindu_sample_app/helpers/connectivity_helper/connectivity_helper.dart';

Future<void>? setup(GetIt di) async {
  di.registerLazySingleton(
      () => ConnectivityHelper(connectivity: Connectivity()));
}
