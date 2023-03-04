import 'package:json_annotation/json_annotation.dart';
import 'package:pasindu_sample_app/helpers/error_handling/error.dart';

part 'caching_error.g.dart';

@JsonSerializable()
class CachingError extends Error {
  CachingError(
      {String? errorMessage =
          'Unexpected caching error. Please contact your system administrator',
      String? errorDetail,
      String? data,
      String? errorLocationId})
      : super(
            errorMessage: errorMessage,
            errorDetail: errorDetail,
            data: data,
            errorLocationId: errorLocationId);

  factory CachingError.fromJson(Map<String, dynamic> json) =>
      _$CachingErrorFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CachingErrorToJson(this);
}
