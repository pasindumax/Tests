import 'package:json_annotation/json_annotation.dart';

part 'usecase.params.g.dart';

@JsonSerializable()
class UsecaseParams{
  String? classIdentifier;
  UsecaseParams({
    this.classIdentifier = 'UsecaseParams'
  });
  
factory UsecaseParams.fromJson(Map<String, dynamic> json) =>
      _$UsecaseParamsFromJson(json);

  Map<String, dynamic> toJson() => _$UsecaseParamsToJson(this);
}