
import 'package:json_annotation/json_annotation.dart';

part 'success.g.dart';

@JsonSerializable()
class Success {
  Success({this.successMessage, this.successDetail, this.data, this.successLocationId});

  final String? successMessage;
  final String? successDetail;
  final String? data;
  final String? successLocationId;

  factory Success.fromJson(Map<String, dynamic> json) => _$SuccessFromJson(json);

  Map<String, dynamic> toJson() => _$SuccessToJson(this);
  
  static String generateLocationId(
      String classIdentifier, String methodIdentifier, int pointId) {
    return '$classIdentifier->$methodIdentifier->$pointId';
  }
}
