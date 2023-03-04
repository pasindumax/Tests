import 'package:equatable/equatable.dart';

import 'package:flutter/material.dart';
import 'package:pasindu_sample_app/theme/theme_values/theme_variation_type.dart';

class ThemeColorVariation extends Equatable {
  ThemeColorVariation({
    required this.primary,
    required this.warning,
    required this.error,
    required this.success,
    required this.info,
  });

  final Color primary;
  final Color warning;
  final Color error;
  final Color success;
  final Color info;

  @override
  List<Object?> get props => [primary, info, warning, error, success];

  ThemeColorVariation copyWith({
    Color? primary,
    Color? warning,
    Color? error,
    Color? success,
    Color? info,
  }) {
    return ThemeColorVariation(
      primary: primary ?? this.primary,
      warning: warning ?? this.warning,
      error: error ?? this.error,
      success: success ?? this.success,
      info: info ?? this.info,
    );
  }

  Color getColorByVariation({required ThemeVariationType themeVariationType}) {
    switch (themeVariationType) {
      case ThemeVariationType.primary:
        return primary;
      case ThemeVariationType.error:
        return error;
      case ThemeVariationType.success:
        return success;
      case ThemeVariationType.info:
        return info;
      case ThemeVariationType.warning:
        return warning;
    }
  }
}
