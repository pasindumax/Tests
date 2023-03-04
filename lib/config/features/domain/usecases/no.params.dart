import 'package:pasindu_sample_app/config/features/domain/usecases/usecase.params.dart';
import 'package:json_annotation/json_annotation.dart';

part 'no.params.g.dart';

@JsonSerializable()
class NoParams extends UsecaseParams {
  NoParams() : super(classIdentifier: 'NoParams');

  factory NoParams.fromJson(Map<String, dynamic> json) =>
      _$NoParamsFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$NoParamsToJson(this);
}
