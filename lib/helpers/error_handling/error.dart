import 'package:json_annotation/json_annotation.dart';

part 'error.g.dart';

@JsonSerializable()
class Error {
  final String? errorMessage;
  final String? errorDetail;
  final String? data;
  final String? errorLocationId;
  Error({this.errorMessage, this.errorLocationId, this.errorDetail, this.data});

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorToJson(this);

  static String generateLocationId(
      String classIdentifier, String methodIdentifier, int pointId) {
    return '$classIdentifier->$methodIdentifier->$pointId';
  }
}
