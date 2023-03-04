import 'package:json_annotation/json_annotation.dart';
import 'package:pasindu_sample_app/helpers/error_handling/error.dart';

part 'network_error.g.dart';

@JsonSerializable()
class NetworkError extends Error {
  NetworkError(
      {String? errorMessage =
          'Unexpected network error. Please contact your system administrator',
      String? errorDetail,
      String? data,
      String? errorLocationId})
      : super(
            errorMessage: errorMessage,
            errorDetail: errorDetail,
            data: data,
            errorLocationId: errorLocationId);

  factory NetworkError.fromJson(Map<String, dynamic> json) =>
      _$NetworkErrorFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NetworkErrorToJson(this);
}
