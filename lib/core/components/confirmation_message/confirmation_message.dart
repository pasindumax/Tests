import 'package:pasindu_sample_app/core/components/bar_button/bar_button.component.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/color_palatte.dart';
import 'package:flutter/material.dart';
import 'package:pasindu_sample_app/theme/theme_values/theme_variation_type.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ConfirmationMessage extends StatelessWidget {
  final String? title;
  final String? message;
  final Widget? messageWidget;
  final bool? isShowcloseIcon;
  final String? positiveBtnTitle;
  final String? negativeBtnTitle;
  final Function(bool)? onTapSubmitCallback;
  final bool? isDismissible;
  final ThemeVariationType? themeVariationType;

  const ConfirmationMessage(
      {Key? key,
      this.title,
      this.message,
      this.messageWidget,
      this.positiveBtnTitle,
      this.negativeBtnTitle,
      this.onTapSubmitCallback,
      this.isDismissible,
      this.themeVariationType = ThemeVariationType.success,
      this.isShowcloseIcon = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      actionsOverflowAlignment: OverflowBarAlignment.start,
      insetPadding: EdgeInsets.zero,
      content: Container(
        padding: EdgeInsets.only(top: 2.h, bottom: 4.h, left: 3.h, right: 3.h),
        decoration: BoxDecoration(
          color: ColorPalette.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: ColorPalette.black.withOpacity(0.11),
              blurRadius: 26,
            ),
          ],
        ),
        child: Wrap(
          children: <Widget>[
            _header(context),
            _title(context),
            _message(context),
            _renderButton(context)
          ],
        ),
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Stack(
      children: [isShowcloseIcon == true ? _closeIcon(context) : Container()],
    );
  }

  Widget _closeIcon(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: () {
          if (onTapSubmitCallback != null) {
            onTapSubmitCallback!(false);
          }
          closeMessage(context);
        },
        child: const Icon(Icons.close),
      ),
    );
  }

  Widget _title(BuildContext context) {
    return Center(
      child: Center(
          child: Text(
        title ?? '',
        style: Theme.of(context).textTheme.headline3,
        textAlign: TextAlign.center,
      )),
    );
  }

  Widget _message(BuildContext context) {
    if (messageWidget != null) {
      return Center(
        child:
            Padding(padding: EdgeInsets.only(top: 4.h), child: messageWidget),
      );
    } else {
      return Center(
        child: Padding(
          padding: EdgeInsets.only(top: 4.h, right: 2.w, left: 2.w),
          child: Text(
            message ?? '',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline3
                ?.copyWith(fontWeight: FontWeight.normal, height: 1.2),
          ),
        ),
      );
    }
  }

  /// RENDER BUTTON
  Widget _renderButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 5.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _negativeButton(context),
          _positiveButton(context),
        ],
      ),
    );
  }

  /// RENDER POSITIVE BUTTON
  Widget _positiveButton(BuildContext context) {
    return Flexible(
        child: Padding(
      padding: EdgeInsets.only(left: 2.w),
      child: BarButton(
        height: 12.w,
        title: positiveBtnTitle ?? 'Accept',
        onTap: () {
          if (onTapSubmitCallback != null) {
            onTapSubmitCallback!(true);
          }

          closeMessage(context);
        },
      ),
    ));
  }

  /// RENDER NEGATIVE BUTTON
  Widget _negativeButton(BuildContext context) {
    return Flexible(
        child: Padding(
      padding: EdgeInsets.only(right: 2.w),
      child: BarButton(
        height: 12.w,
        themeVariationType: themeVariationType ?? ThemeVariationType.error,
        title: negativeBtnTitle ?? 'Reject',
        onTap: () {
          if (onTapSubmitCallback != null) {
            onTapSubmitCallback!(false);
          }

          closeMessage(context);
        },
      ),
    ));
  }

  void closeMessage(BuildContext context) {
    Navigator.pop(context);
  }
}
