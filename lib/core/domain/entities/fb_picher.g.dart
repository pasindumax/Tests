// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fb_picher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FBPicher _$FBPicherFromJson(Map<String, dynamic> json) => FBPicher(
      data: json['data'] == null
          ? null
          : FBPicherData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FBPicherToJson(FBPicher instance) => <String, dynamic>{
      'data': instance.data,
    };
