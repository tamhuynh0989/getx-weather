import 'package:demo_getx_flutter/presentation/theme/colors.dart';
import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  CircleIconButton({
    this.size = 17.0,
    this.icon = Icons.clear,
    required this.onPressed,
    this.isBackground = true,
  });

  final double size;
  final VoidCallback onPressed;
  final IconData icon;
  final bool isBackground;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: SizedBox(
            width: size,
            height: size,
            child: Stack(
              alignment: Alignment(0, 0), // all centered
              children: <Widget>[
                isBackground
                    ? Container(
                        width: size,
                        height: size,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.colorGreyIcon),
                      )
                    : Container(),
                Icon(
                  icon,
                  color: isBackground ? AppColors.white : null,
                  size: size,
                )
              ],
            )));
  }
}
