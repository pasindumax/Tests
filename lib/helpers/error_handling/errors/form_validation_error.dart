import 'package:json_annotation/json_annotation.dart';
import 'package:pasindu_sample_app/helpers/error_handling/error.dart';

part 'form_validation_error.g.dart';

@JsonSerializable()
class FormValidationError extends Error {
  FormValidationError(
      {String? errorMessage =
          'Unexpected form validation error. Please contact your system administrator',
      String? errorDetail,
      String? data,
      String? errorLocationId})
      : super(
            errorMessage: errorMessage,
            errorDetail: errorDetail,
            data: data,
            errorLocationId: errorLocationId);

  factory FormValidationError.fromJson(Map<String, dynamic> json) =>
      _$FormValidationErrorFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FormValidationErrorToJson(this);
}
