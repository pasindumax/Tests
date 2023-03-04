import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/color_palatte.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BarButtonSimmer extends StatelessWidget {
  final double? width;
  final double? height;

  const BarButtonSimmer({Key? key, this.width, this.height = 50})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: EdgeInsets.only(top: 4.w),
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.w),
      decoration: BoxDecoration(
          color: ColorPalette.black,
          borderRadius: BorderRadius.all(
            Radius.circular(height ?? 0.0),
          )),
    );
  }
}
