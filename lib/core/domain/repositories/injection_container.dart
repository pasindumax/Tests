import 'package:pasindu_sample_app/core/domain/repositories/faceook_auth_resository.dart';
import 'package:pasindu_sample_app/core/domain/repositories/impl/faceook_auth_repository_impl.dart';

import 'package:get_it/get_it.dart';
import 'package:pasindu_sample_app/core/domain/repositories/impl/news_details_repository_impl.dart';
import 'package:pasindu_sample_app/core/domain/repositories/news_details_repository.dart';

Future<void>? setup(GetIt di) async {
  di.registerLazySingleton<FaceookAuthRepository>(
      () => FaceookAuthRepositoryImpl(firebaseDataSource: di()));

  di.registerLazySingleton<NewsDetailsRepository>(
      () => NewsDetailsRepositoryImpl(remortDataSource: di()));
}
