import 'package:pasindu_sample_app/helpers/validator/validation_config.dart';

class PasswordMatchValidationConfig extends ValidationConfig {
  final String? confirmPassword;

  PasswordMatchValidationConfig({
    this.confirmPassword,
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
