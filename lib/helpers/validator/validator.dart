import 'package:pasindu_sample_app/generated/l10n.dart';
import 'package:pasindu_sample_app/helpers/currency_helper/currency_helper.dart';
import 'package:pasindu_sample_app/helpers/validator/validation_config.dart';
import 'package:pasindu_sample_app/helpers/validator/validation_configs/email_validation_config.dart';
import 'package:pasindu_sample_app/helpers/validator/validation_configs/password_match_validation_config.dart';
import 'package:pasindu_sample_app/helpers/validator/validation_configs/required_validation_config.dart';
import 'package:pasindu_sample_app/helpers/validator/validation_field.dart';
import 'package:pasindu_sample_app/helpers/validator/validation_result.dart';
import 'package:pasindu_sample_app/injection_container.dart';

import 'validation_configs/number_validation_config.dart';

class Validator {
  late final CurrencyHelper currencyHelper = di();
  late final S s = di();

  ValidationResult validateFields(List<ValidationField> validationFieldList) {
    var validationResult = ValidationResult(isValid: true);
    OUTER:
    for (var fieldIndex = 0;
        fieldIndex < validationFieldList.length;
        fieldIndex++) {
      for (var configIndex = 0;
          configIndex <
              validationFieldList[fieldIndex].validationConfigList.length;
          configIndex++) {
        var result = validateField(
            validationFieldList[fieldIndex].fieldName,
            validationFieldList[fieldIndex].value ?? '',
            validationFieldList[fieldIndex].validationConfigList[configIndex]);
        if (!result.isValid) {
          validationResult = result;
          break OUTER;
        } else if (result.isValid &&
            validationFieldList.length - 1 == fieldIndex &&
            validationFieldList[fieldIndex].validationConfigList.length - 1 ==
                configIndex) {
          validationResult = result;
          break OUTER;
        }
      }
    }
    return validationResult;
  }

  ValidationResult validateField(
      String fieldName, String value, ValidationConfig validationConfig) {
    if (validationConfig is RequiredValidationConfig) {
      var result = _isRequired(fieldName, value, validationConfig);
      if (!result.isValid) {
        return result;
      }
    } else if (validationConfig is NumberValidationConfig) {
      var result = _isNumber(fieldName, value, validationConfig);
      if (!result.isValid) {
        return result;
      }
    } else if (validationConfig is EmailValidationConfig) {
      var result = _isEmail(fieldName, value, validationConfig);
      if (!result.isValid) {
        return result;
      }
    } else if (validationConfig is PasswordMatchValidationConfig) {
      var result = _isPasswordMatched(fieldName, value, validationConfig);
      if (!result.isValid) {
        return result;
      }
    }

    return ValidationResult(isValid: true);
  }

  ValidationResult _isRequired(String fieldName, String value,
      RequiredValidationConfig validationConfig) {
    if (value != '') {
      return ValidationResult(
          isValid: true,
          message: validationConfig.successMessageIsRequired ?? false
              ? validationConfig.customSuccessMessage
              : null);
    } else {
      return ValidationResult(
          isValid: false,
          message: validationConfig.customErrorMessage ??
              s.validationIsRequired(fieldName));
    }
  }

  ValidationResult _isNumber(
      String fieldName, String value, NumberValidationConfig validationConfig) {
    var parsedValue = double.tryParse(currencyHelper.trimCommaOfString(value));
    print('parsed value: $parsedValue');
    if (parsedValue != null) {
      return ValidationResult(
          isValid: true,
          message: validationConfig.successMessageIsRequired ?? false
              ? validationConfig.customSuccessMessage
              : null);
    } else {
      return ValidationResult(
          isValid: false,
          message: validationConfig.customErrorMessage ??
              s.validationIsNumber(fieldName));
    }
  }

  ValidationResult _isEmail(
      String fieldName, String value, EmailValidationConfig validationConfig) {
    var isValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);
    if (isValid) {
      return ValidationResult(
          isValid: true,
          message: validationConfig.successMessageIsRequired ?? false
              ? validationConfig.customSuccessMessage
              : null);
    } else {
      return ValidationResult(
          isValid: false,
          message: validationConfig.customErrorMessage ??
              s.validationIsEmail(fieldName));
    }
  }

  ValidationResult _isPasswordMatched(String fieldName, String value,
      PasswordMatchValidationConfig validationConfig) {
    if (value != '' &&
        validationConfig.confirmPassword != null &&
        validationConfig.confirmPassword != '' &&
        value == validationConfig.confirmPassword) {
      return ValidationResult(
          isValid: true,
          message: validationConfig.successMessageIsRequired ?? false
              ? validationConfig.customSuccessMessage
              : null);
    } else {
      return ValidationResult(
          isValid: false,
          message: validationConfig.customErrorMessage ??
              s.validationPasswordNotEqualsToConfirmPassword);
    }
  }
}
