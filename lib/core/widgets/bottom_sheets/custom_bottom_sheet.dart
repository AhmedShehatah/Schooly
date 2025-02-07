import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomSheet {
  static void showBottomSheet(BuildContext ctx, Widget child,
      {String? routeName}) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32.r),
          topRight: Radius.circular(32.r),
        ),
      ),
      context: ctx,
      builder: (c) => SingleChildScrollView(
        child: Column(
          children: [5.verticalSpace, child],
        ),
      ),
    );
  }
}
