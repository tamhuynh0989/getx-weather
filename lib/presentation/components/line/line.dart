import 'package:flutter/material.dart';
import 'package:demo_getx_flutter/presentation/theme/colors.dart';

class Line extends StatelessWidget {
  Line({
    Key? key,
    this.color,
    this.height = 10,
    this.leftInset = 0,
    this.rightInset = 0,
  }) : super(key: key);

  final Color? color;

  final double height;

  final double leftInset;

  final double rightInset;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: this.leftInset, right: this.rightInset),
      child: Divider(
        thickness: this.height,
        height: this.height,
        color: this.color ?? AppColors.colorLine,
      ),
    );
  }
}
