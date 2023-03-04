import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/color_palatte.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Seperator extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? color;
  const Seperator({Key? key, this.width, this.height, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 100.w,
      height: height ?? 0.5,
      color: color ?? ColorPalette.grey3,
    );
  }
}
