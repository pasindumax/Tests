import 'package:json_annotation/json_annotation.dart';
import 'package:pasindu_sample_app/core/domain/entities/fb_picher.dart';
import 'package:pasindu_sample_app/core/domain/entities/news_picher.dart';

part 'news.g.dart';

@JsonSerializable()
class News {
  final int? id;
  final String? title;

  final String? description;
  final String? address;
  final String? postcode;
  final String? latitude;
  final String? longitude;
  final NewsPicher? image;

  News({
    this.id,
    this.title,
    this.description,
    this.address,
    this.postcode,
    this.latitude,
    this.longitude,
    this.image,
  });

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

  Map<String, dynamic> toJson() => _$NewsToJson(this);
}
