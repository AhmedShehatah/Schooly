import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:logger/web.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/theme/palette.dart';
import '../../../core/utils/date_utils.dart';
import '../../../core/widgets/bottom_sheets/custom_bottom_sheet.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/upcoming_classes/entities/upcoming_classes/upcoming_classes.dart';
import '../../upcoming_classes/cubit/upcoming_classes_cubit.dart';
import '../../upcoming_classes/widgets/room_details_sheet.dart';

class UpcomingClassesWidget extends StatelessWidget {
  const UpcomingClassesWidget({super.key});

  Widget _buildClassCard(UpcomingClasses item, BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
        width: 320.w,
        child: ListTile(
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.images.atom.image(width: 50.w, height: 50.h),
            ],
          ),
          title: CustomText.s11(
            '${item.grade} / ${item.subject}',
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
              SizedBox(height: 6.sp),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: Palette.sunsetOrange.color1,
                  border: Border.all(color: Palette.sunsetOrange.color3),
                ),
                child: CustomText.s11(
                  DateUtility.dateToSinceFormat(DateTime.parse(item.date)
                      .copyWith(hour: int.parse(item.from.substring(0, 2)))),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return PagedListView<int, UpcomingClasses>(
      scrollDirection: Axis.horizontal,
      pagingController: sl<UpcomingClassesCubit>().controller,
      builderDelegate: PagedChildBuilderDelegate<UpcomingClasses>(
        itemBuilder: (context, item, index) {
          Logger().e(index);
          return _buildClassCard(item, context);
        },
      ),
    );
  }
}
