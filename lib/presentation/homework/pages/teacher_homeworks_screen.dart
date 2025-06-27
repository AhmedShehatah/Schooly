import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/utils/dimensions.dart';
import '../../../core/widgets/app_bars/custom_app_bar.dart';
import '../../../core/widgets/paged_list/custom_paged_list.dart';
import '../cubit/teacher_homeworks_cubit.dart';
import '../widgets/submitted_homework_widget.dart';

class TeacherHomeworksScreen extends StatefulWidget {
  const TeacherHomeworksScreen({
    super.key,
    required this.homeworkId,
  });
  static const String routeName = '/teacher_homeworks_screen';
  final String homeworkId;

  @override
  State<TeacherHomeworksScreen> createState() => _TeacherHomeworksScreenState();
}

class _TeacherHomeworksScreenState extends State<TeacherHomeworksScreen> {
  @override
  void initState() {
    sl<TeacherHomeworksCubit>()
      ..setHomeworkId(widget.homeworkId)
      ..fetch();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: lz.submittedHomeworks,
      ),
      body: Padding(
        padding: Dimensions.defaultPagePadding,
        child: CustomPagedList(
          controller: sl<TeacherHomeworksCubit>().controller,
          itemBuilder: (item) => SubmittedHomeworkWidget(homework: item),
          shimmerItemHeight: 100.h,
          emptyText: lz.noSubmittedHomeworksYet,
        ),
      ),
    );
  }
}
