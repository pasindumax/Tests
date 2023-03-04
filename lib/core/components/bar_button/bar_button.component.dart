import 'package:pasindu_sample_app/store/theme_store/theme.store.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/color_palatte.dart';
import 'package:flutter/material.dart';
import 'package:pasindu_sample_app/core/components/bar_button/bar_button.component.simmer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pasindu_sample_app/theme/theme_values/theme_variation_type.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';

class BarButton extends StatelessWidget {
  const BarButton(
      {Key? key,
      this.onTap,
      this.title,
      this.prefix,
      this.prefixIconColor,
      this.suffix,
      this.suffixIconColor,
      this.width,
      this.iconSize,
      this.height = 50,
      this.textStyle,
      this.themeVariationType = ThemeVariationType.primary,
      this.secondaryThemeVariationType = ThemeVariationType.primary,
      this.style,
      this.bgColor,
      this.buttonType = BarButtonType.filled,
      this.addBackground,
      this.buttonBorderWidth,
      this.shape,
      this.cornerRadius,
      this.padding,
      this.isLoading,
      this.isDisable = false})
      : super(key: key);

  final Function? onTap;
  final String? title;
  final String? prefix;
  final Color? prefixIconColor;
  final String? suffix;
  final Color? suffixIconColor;
  final double? width;
  final double? iconSize;
  final double height;
  final TextStyle? textStyle;
  final ThemeVariationType themeVariationType;
  final ThemeVariationType secondaryThemeVariationType;
  final ButtonStyle? style;
  final Color? bgColor;
  final BarButtonType buttonType;
  final bool? addBackground;
  final bool? isDisable;
  final double? buttonBorderWidth;
  final RoundedRectangleBorder? shape;
  final double? cornerRadius;
  final EdgeInsets? padding;
  final double _contentWidth = 75;
  final bool? isLoading;
  //final double maxHeight = 50;

  @override
  Widget build(BuildContext context) {
    final ts = Provider.of<ThemeStore>(context);
    return isLoading == true
        ? renderSimmer()
        : renderButtonContainer(context, ts);
  }

  renderSimmer() {
    return Shimmer.fromColors(
        baseColor: ColorPalette.white,
        highlightColor: ColorPalette.grey1,
        enabled: isLoading == true,
        child: BarButtonSimmer(
          height: height,
        ));
  }

  Widget renderButtonContainer(BuildContext context, ThemeStore ts) {
    return ElevatedButton(
        child: renderContent(context),
        onPressed: isDisable == false
            ? () {
                if (onTap != null) {
                  onTap!();
                }
              }
            : null,
        style: ElevatedButton.styleFrom(
            primary: getBgColor(ts),
            onPrimary: getTextColor(ts),
            minimumSize: Size(100.w, height),

            // maximumSize: Size(width, maxHeight),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(cornerRadius ?? height / 8),
            ),
            side: isDisable == false
                ? BorderSide(
                    width: buttonBorderWidth ?? 1.w,
                    color: getBorderColor(ts),
                  )
                : null,
            padding: padding,
            textStyle: textStyle ??
                (Theme.of(context)
                    .primaryTextTheme
                    .headline3
                    ?.copyWith(fontSize: height / 3))));
  }

  getBgColor(ThemeStore ts) {
    switch (buttonType) {
      case BarButtonType.filled:
        return ts.tc.colors.themeColorVariation
            .getColorByVariation(themeVariationType: themeVariationType);
      case BarButtonType.outlined:
        return ts.tc.colors.secondaryThemeColorVariation.getColorByVariation(
            themeVariationType: secondaryThemeVariationType);
      case BarButtonType.unfilled:
        return ts.tc.colors.secondaryThemeColorVariation.getColorByVariation(
            themeVariationType: secondaryThemeVariationType);
    }
  }

  getTextColor(ThemeStore ts) {
    switch (buttonType) {
      case BarButtonType.filled:
        return ts.tc.colors.secondaryThemeColorVariation.getColorByVariation(
            themeVariationType: secondaryThemeVariationType);
      case BarButtonType.outlined:
        return ts.tc.colors.themeColorVariation
            .getColorByVariation(themeVariationType: themeVariationType);
      case BarButtonType.unfilled:
        return ts.tc.colors.themeColorVariation
            .getColorByVariation(themeVariationType: themeVariationType);
    }
  }

  getBorderColor(ThemeStore ts) {
    switch (buttonType) {
      case BarButtonType.filled:
        return ts.tc.colors.themeColorVariation
            .getColorByVariation(themeVariationType: themeVariationType);
      case BarButtonType.outlined:
        return ts.tc.colors.themeColorVariation
            .getColorByVariation(themeVariationType: themeVariationType);
      case BarButtonType.unfilled:
        return ts.tc.colors.secondaryThemeColorVariation.getColorByVariation(
            themeVariationType: secondaryThemeVariationType);
    }
  }

  Widget renderLeftIcon(
      BuildContext context, String? prefix, double availableSpace) {
    return SizedBox(
      width: height * 0.8,
      child: prefix != null
          ? Align(
              alignment: Alignment.centerLeft,
              child: SvgPicture.asset(
                prefix,
                color: prefixIconColor,
              ),
            )
          : Container(),
    );
  }

  Widget renderRightIcon(
      BuildContext context, String? suffix, double availableSpace) {
    return SizedBox(
      width: height * 0.8,
      child: suffix != null
          ? Align(
              alignment: Alignment.centerRight,
              child: SvgPicture.asset(
                suffix,
                color: suffixIconColor,
              ),
            )
          : Container(),
    );
  }

  Widget renderTitle(BuildContext context, double availableSpace) {
    return Expanded(
      child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title ?? 'Button Text',
            textAlign: TextAlign.center,
            maxLines: 1,
          )),
    );
  }

// AutoSizeText(
//       title ?? 'Button Text',
//       textAlign: TextAlign.center,
//       minFontSize: 8, style: Theme.of(context)
//                         .primaryTextTheme
//                         .headline6
//                       ,
//       maxLines: 1,
//     );
  Widget renderContent(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        prefix != null
            ? renderLeftIcon(context, prefix, _contentWidth)
            : Container(),
        renderTitle(context, _contentWidth),
        suffix != null
            ? renderRightIcon(context, suffix, _contentWidth)
            : Container()
      ],
    );
  }
}

enum BarButtonType { filled, outlined, unfilled }
