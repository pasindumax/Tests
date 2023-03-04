// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Info _$InfoFromJson(Map<String, dynamic> json) => Info(
      infoMessage: json['infoMessage'] as String?,
      infoDetail: json['infoDetail'] as String?,
      data: json['data'] as String?,
      infoLocationId: json['infoLocationId'] as String?,
    );

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
      'infoMessage': instance.infoMessage,
      'infoDetail': instance.infoDetail,
      'data': instance.data,
      'infoLocationId': instance.infoLocationId,
    };
