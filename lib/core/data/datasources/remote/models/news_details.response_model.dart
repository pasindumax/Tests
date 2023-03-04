import 'package:json_annotation/json_annotation.dart';
import 'package:pasindu_sample_app/config/data/models/remote_base_response_model.dart';
import 'package:pasindu_sample_app/core/domain/entities/news.dart';

part 'news_details.response_model.g.dart';

@JsonSerializable()
class NewsDetailsResponseModel extends RemoteBaseResponseModel {
  final List<News>? data;

  NewsDetailsResponseModel({this.data});
  factory NewsDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$NewsDetailsResponseModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$NewsDetailsResponseModelToJson(this);
}
