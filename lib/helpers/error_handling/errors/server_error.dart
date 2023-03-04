import 'package:pasindu_sample_app/helpers/error_handling/error.dart';
import 'package:json_annotation/json_annotation.dart';

part 'server_error.g.dart';

@JsonSerializable()
class ServerError extends Error {
  final int? errorType;
  final String? statusMessage;
  ServerError(
      {this.errorType,
      this.statusMessage,
      String? errorMessage =
          'Unexpected server error. Please contact your system administrator',
      String? errorDetail,
      String? data,
      String? errorLocationId})
      : super(
            errorMessage: errorMessage,
            errorDetail: errorDetail,
            data: data,
            errorLocationId: errorLocationId);

  factory ServerError.fromJson(Map<String, dynamic> json) =>
      _$ServerErrorFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ServerErrorToJson(this);
}
