import 'package:pasindu_sample_app/helpers/validator/validation_config.dart';

class NumberValidationConfig extends ValidationConfig {
  NumberValidationConfig({
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
