import 'package:flutter/material.dart';
import 'package:demo_getx_flutter/gen/fonts.gen.dart';
import 'package:demo_getx_flutter/presentation/theme/colors.dart';
import 'package:demo_getx_flutter/utils/debounce_click_action.dart';

class FlatButtonBase extends StatelessWidget {
  const FlatButtonBase(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.enabled = true,
      this.unFocusInput = false,
      this.borderRadius,
      this.color,
      this.textColor,
      this.elevation})
      : super(key: key);

  final String title;
  final VoidCallback? onPressed;
  final bool enabled;
  final bool unFocusInput;
  final double? borderRadius;
  final Color? color;
  final Color? textColor;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
        color: color ?? AppColors.colorButtonSecondary,
        disabledTextColor: AppColors.disableText,
        disabledColor: AppColors.bgDisable,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8),
        ),
        onPressed: enabled
            ? () {
                if (DebounceClickAction.isMultiClick()) {
                  return;
                }

                if (enabled && onPressed != null) {
                  if (unFocusInput) {
                    _unFocus(context);
                    Future.microtask(() {
                      return FocusScope.of(context)
                          .requestFocus(new FocusNode());
                    });
                  }
                  onPressed!();
                }
              }
            : null,
        child: Text(title,
            style: TextStyle(
                fontFamily: FontFamily.sFProTextRegular,
                color: textColor ??
                    (enabled
                        ? AppColors.colorTextBase
                        : AppColors.disableText))),
      ),
    );
  }

  void _unFocus(BuildContext context) =>
      WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
}
