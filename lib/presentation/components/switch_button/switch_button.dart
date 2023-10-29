import 'package:flutter/material.dart';
import 'package:demo_getx_flutter/presentation/components/switch_button/switch_button_base.dart';
import 'package:demo_getx_flutter/presentation/theme/colors.dart';

class SwitchButton extends StatefulWidget {
  SwitchButton({
    Key? key,
    required this.value,
    required this.onChanged,
    this.enabled = true,
    this.size = const Size(42, 26),
    this.borderColor,
  }) : super(key: key);
  final Size size;

  final bool value;

  final bool enabled;

  final ValueChanged<bool> onChanged;

  final Color? borderColor;

  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  @override
  Widget build(BuildContext context) {
    return BaseSwitchButton(
      borderColor: widget.borderColor ?? _getBorderColor(),
      value: widget.value,
      enabled: widget.enabled,
      size: widget.size,
      trackColor: _getTrackColor(),
      thumbColor: widget.enabled ? Colors.white : Color(0xFFFDFDFD),
      onChanged: widget.enabled ? widget.onChanged : null,
    );
  }

  Color _getTrackColor() {
    if (widget.value) {
      return widget.enabled ? AppColors.primary : AppColors.grey1;
    } else {
      return widget.enabled ? AppColors.bgDisable : Color(0xFFeeeeee);
    }
  }

  Color _getBorderColor() {
    if (widget.value) {
      return _getTrackColor();
    } else {
      if (widget.enabled) {
        return AppColors.bgDisable;
      } else {
        return const Color(0xffeeeeee);
      }
    }
  }
}
