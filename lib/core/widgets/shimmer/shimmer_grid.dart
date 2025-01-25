import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../utils/extensions.dart';
import 'shimmer_item.dart';

class ShimmerGrid extends StatelessWidget {
  const ShimmerGrid({
    super.key,
    required this.rowCount,
    required this.itemWidth,
    required this.itemHeight,
  });

  final int rowCount;
  final double itemWidth;
  final double itemHeight;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.greenAccent,
        highlightColor: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: List<Widget>.generate(
            rowCount,
            (index) => _buildItem(),
          ),
        ));
  }

  Widget _buildItem() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ShimmerItem.noShimmer(
              width: itemWidth,
              height: itemHeight,
              borderRadius: 16.borderRadius,
            ),
            16.horizontalSpace,
            ShimmerItem.noShimmer(
              width: itemWidth,
              height: itemHeight,
              borderRadius: 16.borderRadius,
            ),
          ],
        ),
        16.verticalSpace,
      ],
    );
  }
}
