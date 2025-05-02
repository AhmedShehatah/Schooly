import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/theme/palette.dart';
import '../../../core/utils/date_utils.dart';
import '../../../core/widgets/buttons/custom_button.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/upcoming_classes/entities/upcoming_classes/upcoming_classes.dart';

import '../../lesson_meeting/pages/lesson_attendance_screen.dart';
import 'class_card_widget.dart';

class RoomDetailsSheet extends StatelessWidget {
  final UpcomingClasses item;

  const RoomDetailsSheet({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          8.verticalSpace,
          ClassCardWidget(
            item: item,
            isLast: false,
          ),
          26.verticalSpace,
          Row(
            children: [
              _buildTextIcon(
                  title: lz.teacher,
                  icon: Assets.images.atom.image(width: 25.w, height: 25.h),
                  content: item.teacherId.substring(1, 5)),
              50.horizontalSpace,
              _buildTextIcon(
                  title: lz.lessonType,
                  icon: Assets.images.atom.image(width: 25.w, height: 25.h),
                  content: '${item.lessonType}')
            ],
          ),
          24.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: _buildTextIcon(
                    title: lz.date,
                    icon: Assets.images.atom.image(width: 25.w, height: 25.h),
                    content: DateUtility.formatDateWithoutTime(item.date)),
              ),
              Expanded(
                child: _buildTextIcon(
                    title: lz.from,
                    icon: Assets.images.atom.image(width: 25.w, height: 25.h),
                    content: item.from),
              ),
              Expanded(
                child: _buildTextIcon(
                    title: lz.to,
                    icon: Assets.images.atom.image(width: 25.w, height: 25.h),
                    content: item.to),
              ),
            ],
          ),
          15.verticalSpace,
          CustomButton(
            // enabled: item.date.difference(DateTime.now()).inSeconds > 0,
            isTextBold: true,
            text: lz.joinNow,
            onPressed: () {
              context.pushNamed(LessonAttendanceScreen.routeName,
                  extra: item.id);
            },
          ),
          15.verticalSpace,
          CustomButton.text(
            isExpanded: false,
            onPressed: () {},
            text: lz.activateNotification,
            textColor: Palette.primary.color6,
          ),
          36.verticalSpace,
        ],
      ),
    );
  }

  Widget _buildTextIcon(
      {required String title, required String content, required Widget icon}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText.s11(
          title,
          color: Palette.character.primary85,
        ),
        0.01.sh.verticalSpace,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            0.01.sw.horizontalSpace,
            CustomText.s14(
              content,
              bold: true,
              color: Palette.character.title85,
            )
          ],
        ),
      ],
    );
  }
}
