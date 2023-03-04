import 'package:get_it/get_it.dart';
import 'package:pasindu_sample_app/features/onboarding/splash/injection_container.dart'
    as splash_di;

Future<void>? setup(GetIt di) async {
  splash_di.setup(di);
}
