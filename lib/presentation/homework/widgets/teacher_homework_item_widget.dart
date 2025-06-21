import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/theme/palette.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/homework/entities/homework.dart';
import '../pages/teacher_homeworks_screen.dart';

class TeacherHomeworkItemWidget extends StatelessWidget {
  const TeacherHomeworkItemWidget({super.key, required this.item});
  final Homework item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {
          context.goNamed(TeacherHomeworksScreen.routeName,
              extra: item.homeWorkId);
        },
        leading: Assets.icons.homeworkFile.svg(),
        title: CustomText.s12(
          item.fileName,
          color: Palette.character.primary85,
        ),
        subtitle: CustomText.s11(
          item.lessonTitle,
          color: Palette.character.secondary45,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomText.s14(item.totalSubmissions.toString()),
            const Icon(Icons.keyboard_arrow_left_outlined)
          ],
        ));
  }
}
