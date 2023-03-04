import 'package:json_annotation/json_annotation.dart';
import 'package:pasindu_sample_app/core/domain/entities/fb_picher.dart';

part 'facebook.g.dart';

@JsonSerializable()
class Facebook {
  final String? id;
  final String? name;

  final String? email;
  final FBPicher? picture;

  Facebook({
    this.picture,
    this.id,
    this.name,
    this.email,
  });

  factory Facebook.fromJson(Map<String, dynamic> json) =>
      _$FacebookFromJson(json);

  Map<String, dynamic> toJson() => _$FacebookToJson(this);
}
