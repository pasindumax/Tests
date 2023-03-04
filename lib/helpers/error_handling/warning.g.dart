// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warning.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Warning _$WarningFromJson(Map<String, dynamic> json) => Warning(
      warningMessage: json['warningMessage'] as String?,
      warningDetail: json['warningDetail'] as String?,
      data: json['data'] as String?,
      warningLocationId: json['warningLocationId'] as String?,
    );

Map<String, dynamic> _$WarningToJson(Warning instance) => <String, dynamic>{
      'warningMessage': instance.warningMessage,
      'warningDetail': instance.warningDetail,
      'data': instance.data,
      'warningLocationId': instance.warningLocationId,
    };
