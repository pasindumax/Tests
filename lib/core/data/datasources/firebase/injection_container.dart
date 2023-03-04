import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:pasindu_sample_app/core/data/datasources/firebase/faceook_auth.dart';
import 'package:pasindu_sample_app/core/data/datasources/firebase/impl/faceook_auth_impl.dart';

Future<void>? setup(GetIt di) async {
  //Firestore
  di.registerLazySingleton(() => FacebookAuth.instance);

  // FIREBASE AUTH DATASOURCE
  di.registerLazySingleton<FaceookAuthDataSource>(
      () => FaceookAuthDataSourceImpl(facebookAuth: di()));
}
