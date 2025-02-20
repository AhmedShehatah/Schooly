import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/theme/palette.dart';
import '../../../core/widgets/text/custom_text.dart';

class ClassesWidget extends StatelessWidget {
  const ClassesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165.w,
      height: 215.h,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.r),
                topRight: Radius.circular(24.r)),
            child: SizedBox(
                height: 128.h,
                child: Assets.images.math.image(fit: BoxFit.cover)),
          ),
          Positioned(
            top: 104.h,
            right: 0,
            left: 0,
            child: Container(
              height: 110.h,
              decoration: BoxDecoration(
                color: Palette.neutral.color1,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24.r),
                  bottomLeft: Radius.circular(24.r),
                  bottomRight: Radius.circular(24.r),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Palette.neutral.color5,
                    blurRadius: 1.r,
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 14.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText.s14(
                      '٢ب / عربي',
                      color: Palette.character.primary85,
                    ),
                    8.verticalSpace,
                    CustomText.s12(
                      'الأول إعدادي (عربي)',
                      color: Palette.character.secondary45,
                    ),
                    16.verticalSpace,
                    Row(
                      children: [
                        Expanded(
                          child: LinearProgressIndicator(
                            value: 0.25,
                            minHeight: 8.h,
                            backgroundColor: Palette.neutral.color3,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Palette.primary.color6,
                            ),
                            borderRadius: BorderRadius.circular(100.r),
                          ),
                        ),
                        3.horizontalSpace,
                        CustomText.s11(
                          '25%',
                          color: Palette.character.secondary45,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
