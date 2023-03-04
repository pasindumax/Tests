import 'package:get_it/get_it.dart';
import 'package:pasindu_sample_app/features/onboarding/splash/presentation/mobx/splash.store.dart';

Future<void> setup(GetIt di) async {
  //mobx
  di.registerFactory(() => SplashStore(
        environmentalStore: di(),
      ));
}
