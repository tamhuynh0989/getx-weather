import 'package:demo_getx_flutter/gen/fonts.gen.dart';
import 'package:demo_getx_flutter/presentation/theme/colors.dart';
import 'package:demo_getx_flutter/presentation/theme/font_alias.dart';
import 'package:demo_getx_flutter/presentation/theme/spacing_alias.dart';
import 'package:flutter/material.dart';

class TextWithIcon extends StatelessWidget {
  const TextWithIcon(
      {Key? key,
      required this.isShow,
      this.label = "",
      this.secondLabel = null,
      this.fontWeight,
      this.fontSize = FontAlias.fontAlias12,
      this.color,
      this.fontWeightSecondLabel,
      this.fontSizeSecondLabel,
      this.colorSecondLabel,
      this.icon,
      this.paddingText,
      this.textOverflow,
      this.maxLines,
      this.maxLinesSecondLabel,
      this.padding,
      this.textAlign,
      this.mainAxisAlignment,
      this.crossAxisAlignment,
      this.isTextExpanded = true})
      : super(key: key);

  final String label;
  final String? secondLabel;
  final FontWeight? fontWeight;
  final double fontSize;
  final Color? color;
  final FontWeight? fontWeightSecondLabel;
  final double? fontSizeSecondLabel;
  final Color? colorSecondLabel;
  final Widget? icon;
  final double? paddingText;
  final bool isShow;
  final TextOverflow? textOverflow;
  final int? maxLines;
  final int? maxLinesSecondLabel;
  final EdgeInsets? padding;
  final TextAlign? textAlign;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final bool isTextExpanded;

  Widget build(BuildContext context) {
    Widget expanded = Text(
      label,
      overflow: textOverflow,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: FontFamily.sFProTextRegular,
        color: color ?? AppColors.labelText,
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.w400,
      ),
    );

    if (isTextExpanded) {
      expanded = Expanded(child: expanded);
    }

    return isShow
        ? Padding(
            padding:
                padding ?? const EdgeInsets.only(bottom: SpacingAlias.Spacing4),
            child: Row(
              textBaseline: TextBaseline.ideographic,
              crossAxisAlignment:
                  crossAxisAlignment ?? CrossAxisAlignment.center,
              mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
              children: [
                icon ?? Icon(Icons.add),
                paddingText == null
                    ? SpacingAlias.SizeWidth6
                    : SizedBox(
                        width: paddingText,
                      ),
                (secondLabel == null)
                    ? expanded
                    : Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              label,
                              overflow: textOverflow,
                              maxLines: maxLines,
                              style: TextStyle(
                                fontFamily: FontFamily.sFProTextRegular,
                                color: color ?? AppColors.labelText,
                                fontSize: fontSize,
                                fontWeight: fontWeight ?? FontWeight.w400,
                              ),
                            ),
                            Text(
                              secondLabel!,
                              maxLines: maxLinesSecondLabel,
                              style: TextStyle(
                                fontFamily: FontFamily.sFProTextRegular,
                                color: colorSecondLabel ?? AppColors.grey60,
                                fontSize: fontSizeSecondLabel ??
                                    FontAlias.fontAlias12,
                                fontWeight:
                                    fontWeightSecondLabel ?? FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
              ],
            ),
          )
        : SizedBox.shrink();
  }
}
