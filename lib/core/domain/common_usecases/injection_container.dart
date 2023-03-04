import 'package:get_it/get_it.dart';
import 'package:pasindu_sample_app/core/domain/common_usecases/get_firebase_data/get_firebase_data.dart';
import 'package:pasindu_sample_app/core/domain/common_usecases/firebase_login/firebase_login.dart';
import 'package:pasindu_sample_app/core/domain/common_usecases/firebase_logout/firebase_logout.dart';
import 'package:pasindu_sample_app/core/domain/common_usecases/get_news_details/get_news_details.dart';

Future<void>? setup(GetIt di) async {
  di.registerFactory(() => FirebaseLoginUseCase(
        repository: di(),
        connectivityHelper: di(),
      ));

  di.registerFactory(() => GetFirebaseDataUseCase(
        repository: di(),
        connectivityHelper: di(),
      ));

  di.registerFactory(() => FirebaseLogoutUseCase(
        repository: di(),
        connectivityHelper: di(),
      ));

  di.registerFactory(() => GetNewsDetailsUseCase(
        repository: di(),
        connectivityHelper: di(),
      ));
}
