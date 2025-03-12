import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/palette.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/widgets/text/custom_text.dart';

class HomeworkCardWidget extends StatelessWidget {
  const HomeworkCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: ListTile(
            ///TODO: IMAGE NOTEBOOK
            leading: Assets.icons.notebook.svg(
              width: 42.w,
              height: 42.h,
            ),
            title: CustomText.s12(
              'واجب 2024-02-24.pdf',
              color: Palette.character.primary85,
            ),
            subtitle: CustomText.s11(
              'الدرس الخامس: الضرب الإتجاهي والقياسي',
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
        ),
      ],
    );
  }
}
