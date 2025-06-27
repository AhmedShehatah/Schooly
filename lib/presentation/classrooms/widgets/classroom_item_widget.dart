import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/web.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/theme/palette.dart';
import '../../../core/utils/dimensions.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/classroom/entities/classroom/classroom.dart';
import '../cubits/classroom_list_cubit.dart';
import '../pages/class_details_screen.dart';

class ClassroomItemWidget extends StatelessWidget {
  const ClassroomItemWidget({super.key, required this.classroom});
  final Classroom classroom;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: Dimensions.cardInternalPadding,
        child: ListTile(
          onTap: () {
            sl<ClassroomListCubit>().setChosenClassroomId(classroom.id);
            Logger().e(classroom.id);
            context.goNamed(
              ClassDetailsScreen.routeName,
              extra: classroom.id,
              //   'homeworkClassroomId': classroom.teacherId,
            );
          },
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100.r),
            child: (classroom.subject == 'دراسات')
                ? Assets.images.studies
                    .image(width: 50.w, height: 50.h, fit: BoxFit.cover)
                : (classroom.subject == 'علوم')
                    ? Assets.images.science
                        .image(width: 50.w, height: 50.h, fit: BoxFit.cover)
                    : (classroom.subject == 'رياضه')
                        ? Assets.images.math
                            .image(width: 50.w, height: 50.h, fit: BoxFit.cover)
                        : Assets.images.religion.image(
                            width: 50.w, height: 50.h, fit: BoxFit.cover),
          ),
          title: CustomText.s14(
            classroom.grade,
            bold: true,
          ),
          subtitle: CustomText.s12(classroom.subject,
              color: Palette.character.secondary45),
        ),
      ),
    );
  }
}
