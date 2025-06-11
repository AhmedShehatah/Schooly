import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/palette.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/homework/entities/homework.dart';

class HomeworkCardWidget extends StatelessWidget {
  final Homework item;

  const HomeworkCardWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: InkWell(
            child: Assets.icons.homeworkFile.svg(),
            onTap: () {},
          ),
          title: CustomText.s12(
            item.fileName,
            color: Palette.character.primary85,
          ),
          subtitle: CustomText.s11(
            item.lessonTitle,
            color: Palette.character.secondary45,
          ),
          trailing: InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(999.r),
                color: Palette.neutral.color1,
                border: Border.all(color: Palette.neutral.color5),
                boxShadow: [
                  BoxShadow(
                    color: Palette.neutral.color5,
                    blurRadius: 1.r,
                  )
                ],
              ),
              child: Assets.icons.download.svg(height: 17.sp),
            ),
            onTap: () {},
          ),
        ),
        Divider(
          thickness: 1,
          color: Palette.neutral.color4,
        ),
      ],
    );
  }
}
