import 'package:flutter/material.dart';
import 'package:demo_getx_flutter/presentation/components/components.dart';
import 'package:demo_getx_flutter/presentation/theme/colors.dart';
import 'package:demo_getx_flutter/presentation/theme/font_alias.dart';
import 'package:demo_getx_flutter/presentation/theme/spacing_alias.dart';

class ItemTwoLabelVertical extends StatelessWidget {
  ItemTwoLabelVertical({
    Key? key,
    required this.title,
    required this.description,
    this.colorTitle,
    this.colorDescription,
    this.padding,
    this.fontSizeTitle,
    this.fontWeightTitle,
    this.fontSizeDescription,
    this.fontWeightDescription,
  }) : super(key: key);

  final String title;
  final String description;
  final Color? colorTitle;
  final Color? colorDescription;
  final EdgeInsets? padding;
  final double? fontSizeTitle;
  final FontWeight? fontWeightTitle;
  final double? fontSizeDescription;
  final FontWeight? fontWeightDescription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LabelCustom(
            fontSize: fontSizeTitle ?? FontAlias.fontAlias11,
            label: title,
            color: colorTitle ?? AppColors.grey60,
            fontWeight: fontWeightTitle ?? FontWeight.w700,
          ),
          SpacingAlias.SizeHeight8,
          LabelCustom(
            fontSize: fontSizeDescription ?? FontAlias.fontAlias12,
            color: colorDescription ?? AppColors.greyDescription,
            fontWeight: fontWeightDescription ?? FontWeight.w400,
            label: description,
          ),
        ],
      ),
    );
  }
}
