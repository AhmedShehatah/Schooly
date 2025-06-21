import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/palette.dart';
import 'text/custom_text.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    super.key,
    required this.title,
    required this.titleColor,
  });
  final String? title;
  final Color? titleColor;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Palette.neutral.color1,
      shape: const StadiumBorder(),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
        child: CustomText.s12(
          title,
          color: titleColor,
          bold: true,
        ),
      ),
    );
  }
}
