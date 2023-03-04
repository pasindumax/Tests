// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyncError _$SyncErrorFromJson(Map<String, dynamic> json) => SyncError(
      errorMessage: json['errorMessage'] as String?,
      errorDetail: json['errorDetail'] as String?,
      data: json['data'] as String?,
      errorLocationId: json['errorLocationId'] as String?,
    );

Map<String, dynamic> _$SyncErrorToJson(SyncError instance) => <String, dynamic>{
      'errorMessage': instance.errorMessage,
      'errorDetail': instance.errorDetail,
      'data': instance.data,
      'errorLocationId': instance.errorLocationId,
    };
