import 'package:pasindu_sample_app/core/components/avatar/avatar.component.dart';
import 'package:pasindu_sample_app/core/domain/entities/news.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/color_palatte.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ListItem extends StatelessWidget {
  final News? news;
  const ListItem({
    Key? key,
    required this.news,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      margin: EdgeInsets.all(2.w),
      padding: EdgeInsets.all(
        2.w,
      ),
      decoration: BoxDecoration(
        color: ColorPalette.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.23),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          _renderImage(context),
          Expanded(
            child: Column(
              children: [
                _renderTitle(context),
                _renderAddress(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderImage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.w),
      child: Avatar(source: news?.image?.medium),
    );
  }

  Widget _renderTitle(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: AutoSizeText(
        news?.title ?? '',
        style: Theme.of(context).primaryTextTheme.headline5,
      ),
    );
  }

  Widget _renderAddress(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(top: 1.h),
      child: AutoSizeText(
        news?.address ?? '',
        style: Theme.of(context).primaryTextTheme.bodyText2,
      ),
    );
  }
}
