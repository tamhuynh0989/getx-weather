import 'package:demo_getx_flutter/gen/fonts.gen.dart';
import 'package:demo_getx_flutter/presentation/theme/colors.dart';
import 'package:demo_getx_flutter/presentation/theme/font_alias.dart';
import 'package:demo_getx_flutter/presentation/theme/spacing_alias.dart';
import 'package:flutter/material.dart';

class AppBarBackCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarBackCustom({
    this.title = "",
    required this.voidCallback,
    this.elevation,
    this.titleSpacing,
    this.centerTitle = false,
    this.color,
    this.leadingWidth,
  });

  final String title;
  final VoidCallback voidCallback;
  final double? titleSpacing;
  final double? elevation;
  final bool centerTitle;
  final Color? color;
  final double? leadingWidth;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: leadingWidth ?? SpacingAlias.Spacing32,
      title: Text(
        title,
        style: TextStyle(
          fontFamily: FontFamily.sFProTextRegular,
          color: AppColors.grey90,
          fontSize: FontAlias.fontAlias17,
          fontWeight: FontWeight.w300,
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: AppColors.grey60,
        ),
        onPressed: voidCallback,
      ),
      titleSpacing: titleSpacing ?? SpacingAlias.Spacing0,
      elevation: elevation ?? SpacingAlias.Spacing0,
      centerTitle: centerTitle,
      backgroundColor: color ?? AppColors.white,
    );
  }
}
