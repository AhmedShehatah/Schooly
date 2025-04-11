import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerItem extends StatelessWidget {
  const ShimmerItem({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius = BorderRadius.zero,
  }) : _shimmer = true;

  const ShimmerItem.noShimmer({
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
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.white,
      child: SizedBox(
        width: width,
        height: height,
        child: Material(borderRadius: borderRadius),
      ),
    );
  }
}
