import 'package:dartz/dartz.dart';
import 'package:pasindu_sample_app/config/features/domain/usecases/no.params.dart';
import 'package:pasindu_sample_app/core/data/datasources/remote/trip_details_remote_datasource.dart';
import 'package:pasindu_sample_app/core/domain/entities/news.dart';
import 'package:pasindu_sample_app/core/domain/repositories/news_details_repository.dart';
import 'package:pasindu_sample_app/helpers/error_handling/errors/server_error.dart';
import 'package:pasindu_sample_app/helpers/error_handling/error.dart';

class NewsDetailsRepositoryImpl extends NewsDetailsRepository {
  final classIdentifier = 'NewsDetailsRepositoryImpl';
  late final NewsDetailsRemoteDataSource remortDataSource;

  NewsDetailsRepositoryImpl({required this.remortDataSource});

  @override
  Future<Either<Error, List<News>?>> getNewsDetails(NoParams params) async {
    try {
      final response = await remortDataSource.getNewsDetails(params);
      if (response?.status == 200) {
        return Right(response?.data);
      } else {
        return Left(ServerError(errorMessage: response?.message));
      }
    } on Exception catch (e) {
      return Left(ServerError(errorMessage: e.toString()));
    }
  }
}
