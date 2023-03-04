import 'package:dartz/dartz.dart';
import 'package:pasindu_sample_app/config/features/domain/usecases/no.params.dart';
import 'package:pasindu_sample_app/config/features/domain/usecases/usecase.dart';
import 'package:pasindu_sample_app/core/domain/entities/news.dart';
import 'package:pasindu_sample_app/core/domain/repositories/news_details_repository.dart';
import 'package:pasindu_sample_app/helpers/connectivity_helper/connectivity_helper.dart';
import 'package:pasindu_sample_app/helpers/error_handling/error.dart';

class GetNewsDetailsUseCase extends UseCase<List<News>?, NoParams> {
  late final NewsDetailsRepository repository;
  late final ConnectivityHelper connectivityHelper;

  GetNewsDetailsUseCase({
    required this.repository,
    required this.connectivityHelper,
  });

  @override
  Future<Either<Error, List<News>?>> call(NoParams params) async {
    final isConnected = await connectivityHelper.isConnected();
    if (isConnected) {
      return await repository.getNewsDetails(params);
    } else {
      throw Exception('Please connect to active internet connection');
    }
  }
}
