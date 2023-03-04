import 'package:pasindu_sample_app/config/features/domain/usecases/no.params.dart';
import 'package:pasindu_sample_app/core/data/datasources/remote/models/news_details.response_model.dart';

abstract class NewsDetailsRemoteDataSource {
  Future<NewsDetailsResponseModel?> getNewsDetails(NoParams params);
}
