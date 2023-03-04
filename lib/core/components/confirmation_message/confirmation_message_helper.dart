import 'package:pasindu_sample_app/core/components/confirmation_message/confirmation_message.dart';
import 'package:flutter/material.dart';
import 'package:pasindu_sample_app/theme/theme_values/theme_variation_type.dart';

class ConfirmationMessageHelper {
  void show(
      {final String? title,
      final String? message,
      final Widget? child,
      final String? positiveButtonTitle,
      final String? negativeButtonTitle,
      final bool? isDismissible,
      final Function(bool)? onTapSubmitCallback,
      required final BuildContext context,
      final ThemeVariationType? themeVariationType}) {
    showDialog(
        context: context,
        builder: (BuildContext bc) {
          return WillPopScope(
            onWillPop: () {
              return Future.value(false);
            },
            child: ConfirmationMessage(
              title: title,
              message: message,
              messageWidget: child,
              isDismissible: isDismissible,
              positiveBtnTitle: positiveButtonTitle,
              negativeBtnTitle: negativeButtonTitle,
              onTapSubmitCallback: onTapSubmitCallback,
              themeVariationType: themeVariationType,
            ),
          );
        });
  }
}
