import 'package:demo_getx_flutter/gen/fonts.gen.dart';
import 'package:demo_getx_flutter/presentation/theme/colors.dart';
import 'package:demo_getx_flutter/presentation/theme/font_alias.dart';
import 'package:demo_getx_flutter/utils/debounce_click_action.dart';
import 'package:flutter/material.dart';

class FlatButtonOutlinedComponent extends StatelessWidget {
  const FlatButtonOutlinedComponent(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.borderRadius,
      this.unFocusInput = false,
      this.borderColor,
      this.padding,
      this.fontSize,
      this.fontWeight,
      this.color,
      this.colorText})
      : super(key: key);

  final String title;
  final VoidCallback? onPressed;
  final bool unFocusInput;
  final double? borderRadius;
  final Color? colorText;
  final Color? borderColor;
  final Color? color;
  final EdgeInsets? padding;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: MaterialButton(
          elevation: 0,
          padding: padding ??
              const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 10,
              ),
          color: color ?? AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8),
            side: BorderSide(
              color: borderColor ?? AppColors.primary,
              width: 3,
            ),
          ),
          onPressed: () {
            if (DebounceClickAction.isMultiClick()) {
              return;
            }

            if (onPressed != null) {
              if (unFocusInput) {
                Future.microtask(() {
                  return FocusScope.of(context).requestFocus(new FocusNode());
                });
              }
              onPressed!();
            }
          },
          child: Text(title,
              style: TextStyle(
                  fontFamily: FontFamily.sFProTextRegular,
                  fontSize: fontSize ?? FontAlias.fontAlias14,
                  fontWeight: fontWeight ?? FontWeight.w400,
                  color: colorText ?? AppColors.primary,
                  letterSpacing: 1))),
    );
  }
}
