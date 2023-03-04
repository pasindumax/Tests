// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkError _$NetworkErrorFromJson(Map<String, dynamic> json) => NetworkError(
      errorMessage: json['errorMessage'] as String?,
      errorDetail: json['errorDetail'] as String?,
      data: json['data'] as String?,
      errorLocationId: json['errorLocationId'] as String?,
    );

Map<String, dynamic> _$NetworkErrorToJson(NetworkError instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
      'errorDetail': instance.errorDetail,
      'data': instance.data,
      'errorLocationId': instance.errorLocationId,
    };
