// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'success.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Success _$SuccessFromJson(Map<String, dynamic> json) => Success(
      successMessage: json['successMessage'] as String?,
      successDetail: json['successDetail'] as String?,
      data: json['data'] as String?,
      successLocationId: json['successLocationId'] as String?,
    );

Map<String, dynamic> _$SuccessToJson(Success instance) => <String, dynamic>{
      'successMessage': instance.successMessage,
      'successDetail': instance.successDetail,
      'data': instance.data,
      'successLocationId': instance.successLocationId,
    };
