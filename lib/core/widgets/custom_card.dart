import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.child,
    this.onPress,
    this.padding,
    this.color,
  });
  final Color? color;
  final Widget child;
  final VoidCallback? onPress;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Padding(
        padding: padding ?? Dimensions.cardInternalPadding,
        child: InkWell(
          onTap: onPress,
          child: child,
        ),
      ),
    );
  }
}
