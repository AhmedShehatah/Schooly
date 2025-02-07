import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../app/di/injection_container.dart';
import '../../theme/palette.dart';

class ShimmerItem extends StatelessWidget {
  ShimmerItem({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius = BorderRadius.zero,
  }) : _shimmer = true;

  ShimmerItem.noShimmer({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius = BorderRadius.zero,
  }) : _shimmer = false;

  final double width;
  final double height;
  final BorderRadius borderRadius;

  // dependencies
  // ignore: unused_field
  final _palette = sl<Palette>();

  final bool _shimmer;

  @override
  Widget build(BuildContext context) {
    if (!_shimmer) {
      return SizedBox(
        width: width,
        height: height,
        child: Material(borderRadius: borderRadius),
      );
    }
    return Shimmer.fromColors(
      baseColor: Colors.greenAccent,
      highlightColor: Colors.transparent,
      child: SizedBox(
        width: width,
        height: height,
        child: Material(borderRadius: borderRadius),
      ),
    );
  }
}
