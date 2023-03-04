import 'package:json_annotation/json_annotation.dart';
import 'package:pasindu_sample_app/core/domain/entities/fb_picher.dart';

part 'news_picher.g.dart';

@JsonSerializable()
class NewsPicher {
  final String? small;
  final String? medium;

  final String? large;

  NewsPicher({
    this.small,
    this.medium,
    this.large,
  });

  factory NewsPicher.fromJson(Map<String, dynamic> json) =>
      _$NewsPicherFromJson(json);

  Map<String, dynamic> toJson() => _$NewsPicherToJson(this);
}
