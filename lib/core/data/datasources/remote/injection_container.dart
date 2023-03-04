import 'package:get_it/get_it.dart';
import 'package:pasindu_sample_app/core/data/datasources/remote/impl/news_details_remote_datasource_impl.dart';
import 'package:pasindu_sample_app/core/data/datasources/remote/trip_details_remote_datasource.dart';

Future<void>? setup(GetIt di) async {
  di.registerLazySingleton<NewsDetailsRemoteDataSource>(
      () => NewsDetailsRemoteDataSourceImpl(
            client: di(),
            environmentalStore: di(),
          ));
}
