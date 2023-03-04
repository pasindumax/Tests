import 'package:get_it/get_it.dart';

import 'presentation/mobx/landing.store.dart';

Future<void> setup(GetIt di) async {
  //mobx
  di.registerFactory(() => LandingStore(
        environmentalStore: di(),
        getNewsDetailsUseCase: di(),
        firebaseLogoutUseCase: di(),
        getFirebaseDataUseCase: di(),
      ));
}
