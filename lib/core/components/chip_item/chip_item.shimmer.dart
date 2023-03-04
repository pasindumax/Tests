import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/color_palatte.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ChipItemShimmer extends StatelessWidget {
  final EdgeInsets? margin;
  const ChipItemShimmer({Key? key, this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.only(top: 4.w),
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.w),
      decoration: const BoxDecoration(
          color: ColorPalette.black,
          borderRadius: BorderRadius.all(
            Radius.circular(17),
          )),
      child: SizedBox(
        width: 25.w,
        height: 4.w,
      ),
    );
  }
}
