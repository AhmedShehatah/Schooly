import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/assets/assets.gen.dart';
import '../../core/theme/palette.dart';
import '../../core/utils/extensions.dart';
import '../../core/widgets/bottom_sheets/custom_bottom_sheet.dart';
import '../../core/widgets/buttons/custom_button.dart';
import '../../core/widgets/text/custom_text.dart';

class RoomDetailsSheet extends StatelessWidget {
  const RoomDetailsSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          36.verticalSpace,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Assets.images.atom.image(width: 50.w, height: 50.h),
              5.w.horizontalSpace,
              SizedBox(
                width: 208.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText.s13(
                      'فيزياء/الصف الاول الاعدادي',
                      color: Palette.character.secondary45,
                    ),
                    CustomText.s13(
                      'الدرس الخامس: الضرب الإتجاهي والقياسي',
                      color: Palette.character.primary85,
                      bold: true,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                decoration: BoxDecoration(
                    color: Palette.sunsetOrange.color1,
                    border: Border.all(
                        color: Palette.sunsetOrange.color3, width: 2),
                    borderRadius: BorderRadius.circular(10.r)),
                child: CustomText.s12(
                  '43 دقيقة',
                  color: Palette.sunsetOrange.color6,
                ),
              )
            ],
          ),
          56.verticalSpace,
          Row(
            children: [
              _buildTextIcon(
                  title: 'المعلم',
                  icon: Assets.images.atom.image(width: 25, height: 25),
                  content: 'أيمن حامد'),
              50.horizontalSpace,
              _buildTextIcon(
                  title: 'نوع الجلسة',
                  icon: Assets.images.atom.image(width: 25, height: 25),
                  content: 'أيمن حامد')
            ],
          ),
          24.verticalSpace,
          Row(
            children: [
              _buildTextIcon(
                  title: 'التاريخ',
                  icon: Assets.images.atom.image(width: 25, height: 25),
                  content: '11-1-2025'),
              50.horizontalSpace,
              _buildTextIcon(
                  title: 'من',
                  icon: Assets.images.atom.image(width: 25, height: 25),
                  content: '12:05'),
              50.horizontalSpace,
              _buildTextIcon(
                  title: 'إلى',
                  icon: Assets.images.atom.image(width: 25, height: 25),
                  content: '15:05')
            ],
          ),
          15.verticalSpace,
          CustomButton(
            isTextBold: true,
            text: 'غير متاحة الآن: متبقي 43 دقيقة',
            onPressed: () {},
            backgroundColor: Palette.neutral.color3,
            textColor: Palette.character.disabledPlaceholder25,
          ),
          15.verticalSpace,
          CustomButton.text(
            isExpanded: false,
            onPressed: () {
              CustomBottomSheet.showBottomSheet(context, RoomDetailsSheet());
            },
            text: "فعل الاشعارات",
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
