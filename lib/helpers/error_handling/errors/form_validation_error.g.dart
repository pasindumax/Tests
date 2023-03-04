// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_validation_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FormValidationError _$FormValidationErrorFromJson(Map<String, dynamic> json) =>
    FormValidationError(
      errorMessage: json['errorMessage'] as String?,
      errorDetail: json['errorDetail'] as String?,
      data: json['data'] as String?,
      errorLocationId: json['errorLocationId'] as String?,
    );

Map<String, dynamic> _$FormValidationErrorToJson(
        FormValidationError instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
      'errorDetail': instance.errorDetail,
      'data': instance.data,
      'errorLocationId': instance.errorLocationId,
    };
