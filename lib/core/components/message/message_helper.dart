import 'package:pasindu_sample_app/core/components/message/message.dart';
import 'package:pasindu_sample_app/store/theme_store/theme.store.dart';
import 'package:flutter/material.dart';
import 'package:pasindu_sample_app/theme/theme_values/theme_variation_type.dart';

class MessageHelper {
  void show({
    final String? title,
    required final String message,
    final String? submitButtonTitle,
    final Function? onTapSubmitCallback,
    required final BuildContext context,
    final bool? isDismissible,
    final bool? isDraggable,
    final ThemeVariationType? themeVariationType,
    final ThemeStore? ts,
  }) {
    //WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        isDismissible: isDismissible ?? false,
        enableDrag: isDraggable ?? false,
        isScrollControlled: false,
        builder: (BuildContext bc) {
          return Message(
              title: title,
              message: message,
              submitButtonTitle: submitButtonTitle ?? 'Submit',
              onTapSubmitCallback: onTapSubmitCallback,
              themeVariationType:
                  themeVariationType ?? ThemeVariationType.success,
              ts: ts);
        });
    //});
  }
}
