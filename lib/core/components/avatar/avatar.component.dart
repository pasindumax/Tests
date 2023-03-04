import 'package:flutter/material.dart';
import 'package:pasindu_sample_app/theme/theme_values/pasindu_sample_theme/color_palatte.dart';

class Avatar extends StatelessWidget {
  final double size;
  final String? source;
  final Function? onPressed;
  final Color? bgColor;
  final Widget? widget;
  const Avatar(
      {Key? key,
      this.size = 48,
      this.source,
      this.onPressed,
      this.bgColor,
      this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2),
      child: Stack(
        children: <Widget>[
          _renderAvatar(context),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(onTap: () {
                if (onPressed != null) {
                  onPressed!();
                }
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderAvatar(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: size,
            width: size,
            color: ColorPalette.lightTextColor.withOpacity(0.2),
            child: Container(
              margin: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(size / 2),
                color: bgColor ?? ColorPalette.white,
              ),
              child: Padding(
                padding: EdgeInsets.all((size / 14)),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular((size - ((size / 14) * 2)) / 2),
                  child: widget ??
                      Image.network(
                        source ?? 'https://picsum.photos/200',
                        gaplessPlayback: true,
                        fit: BoxFit.cover,
                      ),
                ),
              ),
            )),
      ],
    );
  }
}
