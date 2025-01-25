import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../utils/extensions.dart';
import 'shimmer_item.dart';

class ShimmerList extends StatelessWidget {
  const ShimmerList({
    super.key,
    required this.rowCount,
    required this.itemWidth,
    required this.itemHeight,
    this.horizontal = false,
    this.borderRadius = 16.0,
  });

  final int rowCount;
  final double itemWidth;
  final double itemHeight;
  final bool horizontal;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.greenAccent,
      highlightColor: Colors.transparent,
      child: horizontal ? _buildHorizontalList() : _buildVerticalList(),
    );
  }

  Widget _buildVerticalList() {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: List<Widget>.generate(
          rowCount,
          (index) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ShimmerItem.noShimmer(
                  width: itemWidth,
                  height: itemHeight,
                  borderRadius: borderRadius.borderRadius,
                ),
                16.verticalSpace,
              ],
            );
          },
        ));
  }

  Widget _buildHorizontalList() {
    return Row(
        mainAxisSize: MainAxisSize.min,
        children: List<Widget>.generate(
          rowCount,
          (index) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ShimmerItem.noShimmer(
                  width: itemWidth,
                  height: itemHeight,
                  borderRadius: borderRadius.borderRadius,
                ),
                16.horizontalSpace,
              ],
            );
          },
        ));
  }
}
