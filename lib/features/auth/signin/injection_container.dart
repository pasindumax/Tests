import 'package:get_it/get_it.dart';
import 'package:pasindu_sample_app/features/auth/signin/presentation/mobx/sign_in.store.dart';

Future<void> setup(GetIt di) async {
  //mobx
  di.registerFactory(() => SignInStore(
      validator: di(),
      connectivityHelper: di(),
      authStore: di(),
      facebookAuth: di(),
      firebaseLoginUseCase: di()));
}
