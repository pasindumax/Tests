import 'package:json_annotation/json_annotation.dart';

part 'warning.g.dart';

@JsonSerializable()
class Warning {
  Warning(
      {this.warningMessage,
      this.warningDetail,
      this.data,
      this.warningLocationId});

  final String? warningMessage;
  final String? warningDetail;
  final String? data;
  final String? warningLocationId;

  
  factory Warning.fromJson(Map<String, dynamic> json) => _$WarningFromJson(json);

  Map<String, dynamic> toJson() => _$WarningToJson(this);
  static String generateLocationId(
      String classIdentifier, String methodIdentifier, int pointId) {
    return '$classIdentifier->$methodIdentifier->$pointId';
  }
}
