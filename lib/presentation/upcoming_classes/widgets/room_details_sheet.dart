import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/theme/palette.dart';
import '../../../core/widgets/buttons/custom_button.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/upcoming_classes/entities/upcoming_classes.dart';
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
          ClassCardWidget(item: item),
          26.verticalSpace,
          Row(
            children: [
              _buildTextIcon(
                  title: 'المعلم',
                  icon: Assets.images.science.image(width: 25, height: 25),
                  content: item.teacherId),
              50.horizontalSpace,
              _buildTextIcon(
                  title: 'نوع الجلسة',
                  icon: Assets.images.science.image(width: 25, height: 25),
                  content: '${item.lessonType}')
            ],
          ),
          24.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildTextIcon(
                  title: 'التاريخ',
                  icon: Assets.images.science.image(width: 25, height: 25),
                  content: item.date),
              _buildTextIcon(
                  title: 'من',
                  icon: Assets.images.science.image(width: 25, height: 25),
                  content: item.from),
              _buildTextIcon(
                  title: 'إلى',
                  icon: Assets.images.science.image(width: 25, height: 25),
                  content: item.to),
            ],
          ),
          15.verticalSpace,
          CustomButton(
            isTextBold: true,
            text:
                // TODO: change to time
                'غير متاحة الآن: متبقي ${DateTime.parse(item.date).difference(DateTime.now()).inMinutes} دقيقة',
            onPressed: () {},
            backgroundColor: Palette.neutral.color3,
            textColor: Palette.character.disabledPlaceholder25,
          ),
          15.verticalSpace,
          CustomButton.text(
            isExpanded: false,
            onPressed: () {},
            text: 'فعل الاشعارات',
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
