// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DBError _$DBErrorFromJson(Map<String, dynamic> json) => DBError(
      errorMessage: json['errorMessage'] as String?,
      errorDetail: json['errorDetail'] as String?,
      data: json['data'] as String?,
      errorLocationId: json['errorLocationId'] as String?,
    );

Map<String, dynamic> _$DBErrorToJson(DBError instance) => <String, dynamic>{
      'errorMessage': instance.errorMessage,
      'errorDetail': instance.errorDetail,
      'data': instance.data,
      'errorLocationId': instance.errorLocationId,
    };
