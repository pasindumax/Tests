import 'package:dartz/dartz.dart';
import 'package:pasindu_sample_app/config/features/domain/usecases/no.params.dart';
import 'package:pasindu_sample_app/core/domain/entities/news.dart';
import 'package:pasindu_sample_app/helpers/error_handling/error.dart';

abstract class NewsDetailsRepository {
  Future<Either<Error, List<News>?>> getNewsDetails(NoParams params);
}
