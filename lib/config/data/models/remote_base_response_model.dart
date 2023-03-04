

import 'package:json_annotation/json_annotation.dart';

part 'remote_base_response_model.g.dart';

@JsonSerializable()
class RemoteBaseResponseModel {
  int? statusCode;
  String? messageCode;
  String? message;
  String? messageDetails;
  int? status;
  String? responseGeneratedTime;
  bool? isSuccess;
  
  RemoteBaseResponseModel({
    this.statusCode,
    this.messageCode,
    this.message,
    this.messageDetails,
    this.status,
    this.responseGeneratedTime,
    this.isSuccess
  });

  factory RemoteBaseResponseModel.fromJson(Map<String, dynamic> json) => _$RemoteBaseResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$RemoteBaseResponseModelToJson(this);
}
