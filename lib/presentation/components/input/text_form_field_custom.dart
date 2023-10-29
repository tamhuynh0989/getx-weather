import 'package:demo_getx_flutter/gen/fonts.gen.dart';
import 'package:demo_getx_flutter/presentation/theme/colors.dart';
import 'package:demo_getx_flutter/presentation/theme/font_alias.dart';
import 'package:demo_getx_flutter/presentation/theme/radius_alias.dart';
import 'package:demo_getx_flutter/presentation/theme/spacing_alias.dart';
import 'package:demo_getx_flutter/presentation/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldCustom extends StatelessWidget {
  const TextFormFieldCustom({
    Key? key,
    this.obscureText = false,
    this.autofocus = false,
    this.focusNode,
    this.nextFocus,
    this.onFieldSubmitted,
    this.textInputAction = TextInputAction.next,
    this.keyboardType = TextInputType.text,
    this.controller,
    this.onChanged,
    this.textCapitalization = TextCapitalization.none,
    this.inputFormatters,
    this.maxLength,
    this.maxLines = 1,
    this.enabled,
    this.validator,
    this.suffixIcon,
    this.prefixIcon,
    this.hintText,
    this.hintStyle,
    this.labelText,
    this.disabledLabelColor,
    this.errorText,
    this.counterText = "",
    this.onTap,
    this.readOnly = false,
    this.borderRadius,
    this.floatingLabelBehavior = FloatingLabelBehavior.auto,
    this.fillColor,
    this.filled,
    this.outlineColor,
    this.fontSize = 16,
  }) : super(key: key);

  final bool obscureText;
  final bool autofocus;
  final FocusNode? focusNode;
  final FocusNode? nextFocus;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final int maxLines;
  final bool? enabled;
  final FormFieldValidator<String>? validator;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final TextStyle? hintStyle;
  final String? labelText;
  final bool? disabledLabelColor;
  final String? errorText;
  final String? counterText;
  final GestureTapCallback? onTap;
  final bool readOnly;
  final FloatingLabelBehavior floatingLabelBehavior;
  final double? borderRadius;
  final Color? fillColor;
  final bool? filled;
  final Color? outlineColor;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      autofocus: autofocus,
      focusNode: focusNode,
      onFieldSubmitted: onFieldSubmitted,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization,
      inputFormatters: inputFormatters,
      controller: controller,
      onChanged: onChanged,
      maxLength: maxLength,
      maxLines: maxLines,
      readOnly: readOnly,
      enabled: enabled,
      validator: validator,
      cursorColor: AppColors.primary,
      style:
          Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: fontSize),
      onTap: onTap,
      buildCounter: (BuildContext context,
          {int? currentLength, int? maxLength, bool? isFocused}) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              "$currentLength",
              style: TextStyle(
                fontFamily: FontFamily.sFProTextRegular,
                color: currentLength == 0
                    ? Color(0xffcccccc)
                    : AppColors.colorTextSecondary,
                fontSize: fontSize,
              ),
            ),
            Text(
              "/$maxLength",
              style: TextStyle(
                fontFamily: FontFamily.sFProTextRegular,
                color: Color(0xffcccccc),
                fontSize: fontSize,
              ),
            ),
          ],
        );
      },
      decoration: InputDecoration(
        isDense: true,
        filled: filled,
        fillColor: fillColor,
        suffixIcon: suffixIcon,
        suffixIconConstraints: BoxConstraints(minHeight: 24, minWidth: 48),
        prefixIcon: prefixIcon,
        counterText: counterText,
        hintText: hintText,
        labelText: labelText,
        errorText: errorText,
        errorMaxLines: 2,
        errorStyle: const TextStyle(
            fontFamily: FontFamily.sFProTextRegular,
            color: Colors.red,
            fontSize: FontAlias.fontAlias12),
        labelStyle: Theme.of(context)
            .textTheme
            .subtitle3
            .copyWith(color: AppColors.colorTextBase),
        hintStyle: hintStyle ?? Theme.of(context).textTheme.button,
        contentPadding: EdgeInsets.symmetric(vertical: SpacingAlias.Spacing12),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.underline),
          borderRadius:
              BorderRadius.circular(borderRadius ?? RadiusAlias.Radius0),
        ),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.underline),
            borderRadius:
                BorderRadius.circular(borderRadius ?? RadiusAlias.Radius0)),
        floatingLabelBehavior: floatingLabelBehavior,
      ),
    );
  }
}
