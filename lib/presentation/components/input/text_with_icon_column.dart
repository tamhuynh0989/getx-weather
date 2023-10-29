import 'package:demo_getx_flutter/gen/fonts.gen.dart';
import 'package:demo_getx_flutter/presentation/theme/colors.dart';
import 'package:demo_getx_flutter/presentation/theme/font_alias.dart';
import 'package:demo_getx_flutter/presentation/theme/spacing_alias.dart';
import 'package:flutter/material.dart';

class TextWithIconColumn extends StatelessWidget {
  const TextWithIconColumn({
    Key? key,
    required this.isShow,
    this.label = "",
    this.fontWeight,
    this.fontSize = FontAlias.fontAlias12,
    this.color,
    this.icon,
    this.textOverflow,
    this.maxLines,
  }) : super(key: key);

  final String label;
  final FontWeight? fontWeight;
  final double fontSize;
  final Color? color;
  final Widget? icon;
  final bool isShow;
  final TextOverflow? textOverflow;
  final int? maxLines;

  Widget build(BuildContext context) {
    return isShow
        ? Padding(
            padding: const EdgeInsets.only(bottom: SpacingAlias.Spacing4),
            child: Column(
              textBaseline: TextBaseline.ideographic,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  label,
                  overflow: textOverflow,
                  maxLines: maxLines,
                  style: TextStyle(
                    fontFamily: FontFamily.sFProTextRegular,
                    color: color ?? AppColors.labelText,
                    fontSize: fontSize,
                    fontWeight: fontWeight ?? FontWeight.w300,
                  ),
                ),
                SpacingAlias.SizeWidth6,
                Expanded(
                  child: icon ?? Icon(Icons.add),
                )
              ],
            ),
          )
        : SizedBox.shrink();
  }
}
