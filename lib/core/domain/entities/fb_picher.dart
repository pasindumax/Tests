import 'package:json_annotation/json_annotation.dart';
import 'package:pasindu_sample_app/core/domain/entities/fb_picher_data.dart';

part 'fb_picher.g.dart';

@JsonSerializable()
class FBPicher {
  final FBPicherData? data;

  FBPicher({
    this.data,
  });

  factory FBPicher.fromJson(Map<String, dynamic> json) =>
      _$FBPicherFromJson(json);

  Map<String, dynamic> toJson() => _$FBPicherToJson(this);
}
