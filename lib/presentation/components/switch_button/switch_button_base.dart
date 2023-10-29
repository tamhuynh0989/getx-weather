import 'package:flutter/material.dart';

const double _borderWidth = 1.5;

class BaseSwitchButton extends StatelessWidget {
  const BaseSwitchButton({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.size,
    this.thumbColor = Colors.white,
    this.trackColor,
    this.borderColor = const Color(0xffeeeeee),
    this.enabled = false,
  }) : super(key: key);

  final Size size;

  final bool value;

  final bool enabled;

  final ValueChanged<bool>? onChanged;

  final Color borderColor;

  final Color? trackColor;

  final Color thumbColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (enabled) {
          onChanged?.call(!value);
        }
      },
      child: Stack(
        alignment: value ? Alignment.centerRight : Alignment.centerLeft,
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              color: trackColor,
              border: Border.all(
                  color: value ? Colors.transparent : borderColor,
                  width: _borderWidth),
              borderRadius: BorderRadius.all(Radius.circular(size.height / 2)),
            ),
          ),
          _getThumb(value)
        ],
      ),
    );
  }

  Positioned _getThumb(bool value) {
    return value
        ? Positioned(
            child: Padding(
              padding: EdgeInsets.only(right: _borderWidth),
              child: Container(
                height: size.height - 2 * _borderWidth,
                width: size.height - 2 * _borderWidth,
                decoration: BoxDecoration(
                  color: thumbColor,
                  borderRadius: BorderRadius.all(
                      Radius.circular(size.height / 2 - _borderWidth)),
                ),
              ),
            ),
          )
        : Positioned(
            child: Container(
              height: size.height,
              width: size.height,
              decoration: BoxDecoration(
                color: thumbColor,
                border: Border.all(color: borderColor, width: _borderWidth),
                borderRadius:
                    BorderRadius.all(Radius.circular(size.height / 2)),
              ),
            ),
          );
  }
}
