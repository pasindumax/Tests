import 'package:pasindu_sample_app/helpers/error_handling/error.dart';
import 'package:json_annotation/json_annotation.dart';

part 'socket_error.g.dart';

@JsonSerializable()
class SocketError extends Error {
  final int? errorType;
  final String? statusMessage;
  SocketError(
      {this.errorType,
      this.statusMessage,
      String? errorMessage =
          'Unexpected socket error. Please contact your system administrator',
      String? errorDetail,
      String? data,
      String? errorLocationId})
      : super(
            errorMessage: errorMessage,
            errorDetail: errorDetail,
            data: data,
            errorLocationId: errorLocationId);

  factory SocketError.fromJson(Map<String, dynamic> json) =>
      _$SocketErrorFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SocketErrorToJson(this);
}
