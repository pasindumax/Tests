// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_details.response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsDetailsResponseModel _$NewsDetailsResponseModelFromJson(
        Map<String, dynamic> json) =>
    NewsDetailsResponseModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => News.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..statusCode = json['statusCode'] as int?
      ..messageCode = json['messageCode'] as String?
      ..message = json['message'] as String?
      ..messageDetails = json['messageDetails'] as String?
      ..status = json['status'] as int?
      ..responseGeneratedTime = json['responseGeneratedTime'] as String?
      ..isSuccess = json['isSuccess'] as bool?;

Map<String, dynamic> _$NewsDetailsResponseModelToJson(
        NewsDetailsResponseModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'messageCode': instance.messageCode,
      'message': instance.message,
      'messageDetails': instance.messageDetails,
      'status': instance.status,
      'responseGeneratedTime': instance.responseGeneratedTime,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };
