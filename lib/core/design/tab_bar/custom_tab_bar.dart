import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required this.tabs,
    this.controller,
    this.onTap,
    this.isScrollable = false,
  });
  final List<Tab> tabs;
  final TabController? controller;
  final Function(int index)? onTap;
  final bool isScrollable;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      child: TabBar(
        dividerHeight: 0,
        isScrollable: isScrollable,
        tabAlignment: isScrollable ? TabAlignment.center : TabAlignment.fill,
        controller: controller,
        tabs: tabs,
        onTap: (value) {
          if (onTap != null) {
            onTap!(value);
          }
        },
      ),
    );
  }
}
