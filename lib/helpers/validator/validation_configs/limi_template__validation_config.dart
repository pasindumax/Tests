import 'package:pasindu_sample_app/helpers/validator/validation_config.dart';

class LimiTemplateValidationConfig extends ValidationConfig {
  final double? maxValue;
  final double? minValue;
  LimiTemplateValidationConfig({
    this.maxValue,
    this.minValue,
    String? customErrorMessage,
    String? customSuccessMessage,
    bool? successMessageIsRequired,
  }) : super(
            customErrorMessage: customErrorMessage,
            customSuccessMessage: customSuccessMessage,
            successMessageIsRequired: successMessageIsRequired);

  @override
  List<Object?> get props => super.props;
}
