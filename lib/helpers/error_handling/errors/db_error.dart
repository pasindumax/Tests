import 'package:json_annotation/json_annotation.dart';
import 'package:pasindu_sample_app/helpers/error_handling/error.dart';

part 'db_error.g.dart';

@JsonSerializable()
class DBError extends Error {
  DBError(
      {String? errorMessage =
          'Unexpected database error. Please contact your system administrator',
      String? errorDetail,
      String? data,
      String? errorLocationId})
      : super(
            errorMessage: errorMessage,
            errorDetail: errorDetail,
            data: data,
            errorLocationId: errorLocationId);

  factory DBError.fromJson(Map<String, dynamic> json) =>
      _$DBErrorFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DBErrorToJson(this);
}
