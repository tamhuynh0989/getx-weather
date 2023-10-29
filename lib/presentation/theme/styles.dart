import 'package:flutter/material.dart';
import 'package:demo_getx_flutter/presentation/theme/colors.dart';
import 'package:demo_getx_flutter/presentation/theme/font_alias.dart';
import 'package:demo_getx_flutter/presentation/theme/spacing_alias.dart';

class AppStyles {
  static final paddingContainer = EdgeInsets.only(
      left: SpacingAlias.Spacing16,
      right: SpacingAlias.Spacing16,
      bottom: SpacingAlias.Spacing16);

  static final paddingButtonFooter = EdgeInsets.only(
      top: SpacingAlias.Spacing12,
      left: SpacingAlias.Spacing16,
      right: SpacingAlias.Spacing16,
      bottom: SpacingAlias.Spacing16);

  static final titlePaddingSm = EdgeInsets.only(
      top: SpacingAlias.Spacing16, left: SpacingAlias.Spacing10);

  static final titlePaddingLg = EdgeInsets.only(
      top: SpacingAlias.Spacing16, left: SpacingAlias.Spacing20);

  static final titlePadding0 =
      EdgeInsets.only(top: SpacingAlias.Spacing16, left: SpacingAlias.Spacing0);

  static final contentPaddingSm = EdgeInsets.only(
      top: 8, left: SpacingAlias.Spacing24, right: SpacingAlias.Spacing24);

  static final contentPaddingLg = EdgeInsets.only(
      top: 28, left: SpacingAlias.Spacing24, right: SpacingAlias.Spacing24);

  static final warningPaddingSm = EdgeInsets.only(
      top: 6, left: SpacingAlias.Spacing24, right: SpacingAlias.Spacing24);

  static final warningPaddingLg = EdgeInsets.only(
      top: 28, left: SpacingAlias.Spacing24, right: SpacingAlias.Spacing24);
}

extension CustomStyles on TextTheme {
  TextStyle get buttonWhite => Typography.material2018()
      .englishLike
      .button!
      .copyWith(color: AppColors.white, letterSpacing: 1);

  TextStyle get buttonPrimary => Typography.material2018()
      .englishLike
      .button!
      .copyWith(color: AppColors.primary, letterSpacing: 1);

  TextStyle get subtitle3 => Typography.material2018()
      .englishLike
      .subtitle2!
      .copyWith(fontSize: FontAlias.fontAlias14, fontWeight: FontWeight.w300);
}
