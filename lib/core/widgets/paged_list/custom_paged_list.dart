import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../network/failure/failure.dart';
import '../../utils/extensions.dart';
import '../shimmer/shimmer_item.dart';
import '../shimmer/shimmer_list.dart';
import '../text/custom_text.dart';

class CustomPagedList<Entity> extends StatelessWidget {
  const CustomPagedList({
    super.key,
    required this.controller,
    required this.itemBuilder,
    this.shimmerItemWidth = double.infinity,
    required this.shimmerItemHeight,
    required this.emptyText,
    this.physics,
    this.shimmerPadding = EdgeInsets.zero,
  });
  final PagingController<int, Entity> controller;
  final Widget Function(Entity item) itemBuilder;
  final double shimmerItemWidth;
  final double shimmerItemHeight;
  final String emptyText;
  final ScrollPhysics? physics;
  final EdgeInsets shimmerPadding;

  @override
  Widget build(BuildContext context) {
    return PagedListView<int, Entity>.separated(
      pagingController: controller,
      physics: physics,
      builderDelegate: PagedChildBuilderDelegate(
        itemBuilder: (context, item, index) => itemBuilder(item),
        firstPageErrorIndicatorBuilder: (context) => Center(
            child: CustomText.s24((controller.error as Failure).message)),
        newPageProgressIndicatorBuilder: (context) {
          return Padding(
            padding: shimmerPadding,
            child: ShimmerItem(
              width: shimmerItemWidth,
              height: shimmerItemHeight,
              borderRadius: 16.borderRadius,
            ),
          );
        },
        noItemsFoundIndicatorBuilder: (context) => Center(
          child: CustomText.s24(emptyText),
        ),
        firstPageProgressIndicatorBuilder: (context) => Padding(
          padding: shimmerPadding,
          child: ShimmerList(
            rowCount: 5,
            itemWidth: shimmerItemWidth,
            itemHeight: shimmerItemHeight,
          ),
        ),
      ),
      separatorBuilder: (context, index) => 16.verticalSpace,
    );
  }
}
