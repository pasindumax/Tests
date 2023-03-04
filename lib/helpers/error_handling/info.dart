import 'package:json_annotation/json_annotation.dart';

part 'info.g.dart';

@JsonSerializable()
class Info {
  Info({this.infoMessage, this.infoDetail, this.data, this.infoLocationId});

  final String? infoMessage;
  final String? infoDetail;
  final String? data;
  final String? infoLocationId;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);

  Map<String, dynamic> toJson() => _$InfoToJson(this);
  static String generateLocationId(
      String classIdentifier, String methodIdentifier, int pointId) {
    return '$classIdentifier->$methodIdentifier->$pointId';
  }
}
