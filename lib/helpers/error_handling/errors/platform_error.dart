import 'package:json_annotation/json_annotation.dart';
import 'package:pasindu_sample_app/helpers/error_handling/error.dart';

part 'platform_error.g.dart';

@JsonSerializable()
class PlatformError extends Error {
  PlatformError(
      {String? errorMessage =
          'Unexpected platform error. Please contact your system administrator',
      String? errorDetail,
      String? data,
      String? errorLocationId})
      : super(
            errorMessage: errorMessage,
            errorDetail: errorDetail,
            data: data,
            errorLocationId: errorLocationId);

  factory PlatformError.fromJson(Map<String, dynamic> json) =>
      _$PlatformErrorFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PlatformErrorToJson(this);
}
