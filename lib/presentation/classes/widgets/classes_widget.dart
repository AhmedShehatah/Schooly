import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/theme/palette.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/classroom/entities/classroom/classroom.dart';
import '../../classrooms/pages/class_details_screen.dart';

class ClassesWidget extends StatelessWidget {
  final Classroom item;
  final bool isLast;
  final Classroom classroom;

  const ClassesWidget(
      {Key? key,
      required this.item,
      required this.isLast,
      required this.classroom})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165.w,
      height: 215.h,
      child: InkWell(
        onTap: () {
          context.goNamed(ClassDetailsScreen.routeName, extra: classroom.id);
        },
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.r),
                  topRight: Radius.circular(24.r)),
              child: SizedBox(
                  child: (item.subject == 'دراسات')
                      ? Assets.images.studies.image(fit: BoxFit.cover)
                      : (item.subject == 'علوم')
                          ? Assets.images.science.image(fit: BoxFit.cover)
                          : (item.subject == 'رياضه')
                              ? Assets.images.math
                                  .image(height: 124.h, fit: BoxFit.cover)
                              : Assets.images.arabic.image(fit: BoxFit.cover)),
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
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 14.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText.s14(
                        item.subject,
                        // '٢ب / عربي',
                        color: Palette.character.primary85,
                      ),
                      8.verticalSpace,
                      CustomText.s12(
                        item.grade,
                        //  'الأول إعدادي (عربي)',
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
            if (!isLast)
              Divider(
                thickness: 1,
                color: Palette.character.secondary45.withOpacity(0.2),
                indent: 16,
                endIndent: 16,
              ),
          ],
        ),
      ),
    );
  }
}
