import 'package:equatable/equatable.dart';

import 'package:pasindu_sample_app/helpers/validator/validation_config.dart';

class ValidationField extends Equatable {
  final String fieldName;
  final String? value;
  final List<ValidationConfig> validationConfigList;

  ValidationField(
      {required this.fieldName,
      this.value,
      required this.validationConfigList});

  @override
  List<Object?> get props => [fieldName, value, validationConfigList];
}
