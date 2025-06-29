import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/palette.dart';
import '../../../core/utils/date_utils.dart';
import '../../../core/widgets/bottom_sheets/custom_bottom_sheet.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/upcoming_classes/entities/upcoming_classes/upcoming_classes.dart';
import 'room_details_sheet.dart';

class ClassCardWidget extends StatelessWidget {
  final UpcomingClasses item;
  final bool isLast;
  const ClassCardWidget({
    super.key,
    required this.item,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(100.r),
              child: (item.subject == 'دراسات')
                  ? Assets.images.studies
                      .image(width: 52.w, height: 52.h, fit: BoxFit.cover)
                  : (item.subject == 'علوم' ||
                          item.subject == 'فيزياء' ||
                          item.subject == 'كيمياء')
                      ? Assets.images.science
                          .image(width: 52.w, height: 52.h, fit: BoxFit.cover)
                      : (item.subject == 'رياضيات' || item.subject == 'رياضه')
                          ? Assets.images.math.image(
                              width: 52.w, height: 52.h, fit: BoxFit.cover)
                          : (item.subject == 'اللغة العربية' ||
                                  item.subject == 'عربي')
                              ? Assets.images.arabic.image(
                                  width: 52.w, height: 52.h, fit: BoxFit.cover)
                              : (item.subject == 'اللغة الإنجليزية' ||
                                      item.subject == 'انجليزي')
                                  ? Assets.images.english.image(
                                      width: 52.w,
                                      height: 52.h,
                                      fit: BoxFit.cover)
                                  : Assets.images.religion.image(
                                      width: 52.w,
                                      height: 52.h,
                                      fit: BoxFit.cover),
            ),
            title: CustomText.s11(
              '${item.subject} / ${item.grade}',
              color: Palette.character.secondary45,
            ),
            subtitle: CustomText.s12(
              item.title,
              color: Palette.character.primary85,
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 6.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Palette.sunsetOrange.color1,
                    border: Border.all(color: Palette.sunsetOrange.color3),
                  ),
                  child: CustomText.s11(
                    DateUtility.sessionDate(item.date, item.from, item.to),
                    color: Palette.sunsetOrange.color6,
                  ),
                ),
              ],
            ),
            onTap: () {
              CustomBottomSheet.showBottomSheet(
                  context, RoomDetailsSheet(item: item));
            },
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
    );
  }
}
