import 'package:json_annotation/json_annotation.dart';

part 'fb_picher_data.g.dart';

@JsonSerializable()
class FBPicherData {
  final double? height;
  @JsonKey(name: 'is_silhouette')
  final bool? isSilhouette;
  final String? url;
  final double? width;

  FBPicherData({
    this.height,
    this.isSilhouette,
    this.url,
    this.width,
  });

  factory FBPicherData.fromJson(Map<String, dynamic> json) =>
      _$FBPicherDataFromJson(json);

  Map<String, dynamic> toJson() => _$FBPicherDataToJson(this);
}
