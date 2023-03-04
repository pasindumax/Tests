import 'package:pasindu_sample_app/core/components/chip_item/chip_item.shimmer.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/color_palatte.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';

class ChipItem extends StatelessWidget {
  final int? id;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final EdgeInsets? margin;
  final Function(int? id)? onclick;
  final bool? isLoading;

  const ChipItem(
      {Key? key,
      this.id,
      required this.text,
      this.backgroundColor,
      this.textColor,
      this.onclick,
      this.margin,
      this.isLoading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLoading == true ? renderSimmer(context) : renderChipItem(context);
  }

  Widget renderSimmer(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: ColorPalette.white,
        highlightColor: ColorPalette.grey1,
        enabled: isLoading == true,
        child: const ChipItemShimmer());
  }

  Widget renderChipItem(BuildContext context) {
    return InkWell(
      onTap: onclick != null ? () => onclick!(id) : null,
      child: Container(
        margin: margin ?? EdgeInsets.only(top: 4.w),
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.w),
        decoration: BoxDecoration(
            color: backgroundColor ??
                textColor?.withAlpha(60) ??
                ColorPalette.green.withAlpha(60),
            borderRadius: const BorderRadius.all(
              Radius.circular(17),
            )),
        child: Text(
          text,
          style: Theme.of(context).primaryTextTheme.bodyText2?.copyWith(
              color: textColor ?? ColorPalette.green,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
