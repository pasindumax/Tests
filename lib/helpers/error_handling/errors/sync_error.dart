import 'package:json_annotation/json_annotation.dart';
import 'package:pasindu_sample_app/helpers/error_handling/error.dart';

part 'sync_error.g.dart';

@JsonSerializable()
class SyncError extends Error {
  SyncError(
      {String? errorMessage =
          'Error in data synchronization. Please contact your system administrator',
      String? errorDetail,
      String? data,
      String? errorLocationId})
      : super(
            errorMessage: errorMessage,
            errorDetail: errorDetail,
            data: data,
            errorLocationId: errorLocationId);

  factory SyncError.fromJson(Map<String, dynamic> json) =>
      _$SyncErrorFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SyncErrorToJson(this);
}
