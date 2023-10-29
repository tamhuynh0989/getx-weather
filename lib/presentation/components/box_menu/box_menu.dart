import 'package:flutter/material.dart';
import 'package:demo_getx_flutter/presentation/theme/colors.dart';
import 'package:demo_getx_flutter/presentation/theme/spacing_alias.dart';

class BoxMenu extends StatelessWidget {
  BoxMenu({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.all(SpacingAlias.Spacing16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: children,
          ),
        ),
      ),
    );
  }
}
