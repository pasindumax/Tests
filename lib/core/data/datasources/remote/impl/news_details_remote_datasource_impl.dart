import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:interpolator/interpolator.dart';
import 'package:pasindu_sample_app/config/features/domain/usecases/no.params.dart';
import 'package:pasindu_sample_app/core/data/datasources/remote/models/news_details.response_model.dart';
import 'package:pasindu_sample_app/core/data/datasources/remote/trip_details_remote_datasource.dart';
import 'package:pasindu_sample_app/flavour_config.dart';
import 'package:pasindu_sample_app/store/environment_store/environmental.store.dart';

class NewsDetailsRemoteDataSourceImpl extends NewsDetailsRemoteDataSource {
  late final http.Client client;
  late final EnvironmentalStore environmentalStore;

  NewsDetailsRemoteDataSourceImpl({
    required this.client,
    required this.environmentalStore,
  });

  @override
  Future<NewsDetailsResponseModel?> getNewsDetails(NoParams params) async {
    try {
      if (environmentalStore.environmentConfig
                  ?.serverEndPoints?[ServerEndPoints.apiGateway] !=
              null &&
          environmentalStore.environmentConfig
                  ?.serverEndPoints?[ServerEndPoints.apiGateway] !=
              '') {
        final response = await client.get(
          Uri.parse((environmentalStore.environmentConfig
                      ?.serverEndPoints?[ServerEndPoints.apiGateway] ??
                  '') +
              (Interpolator(
                  environmentalStore.environmentConfig?.endPoints?.getNews ??
                      '')({}))),
          // headers: environmentalStore
          //     .environmentConfig?.authenticatedRequestHeader
        );
        var data =
            NewsDetailsResponseModel.fromJson(json.decode(response.body));

        return data;
      } else {
        throw Exception(
            'Environment configuration is not loaded successfully.');
      }
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }
}
