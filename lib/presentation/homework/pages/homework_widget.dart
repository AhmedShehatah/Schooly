import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/cubits/user_cubit.dart';
import '../../../core/enums/enums.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/widgets/paged_list/custom_paged_list.dart';

import '../../../domain/auth/entities/user.dart';
import '../../classrooms/cubits/classroom_list_cubit.dart';
import '../cubit/homework_cubit.dart';
import '../cubit/teacher_homeworks_cubit.dart';
import '../widgets/student_homework_item_widget.dart';
import '../widgets/teacher_homework_item_widget.dart';

class HomeworkWidget extends StatefulWidget {
  const HomeworkWidget({Key? key, required this.classroomId}) : super(key: key);
  final String classroomId;

  @override
  HomeworkWidgetState createState() => HomeworkWidgetState();
}

class HomeworkWidgetState extends State<HomeworkWidget> {
  @override
  void initState() {
    sl<HomeworkCubit>()
      ..reset()
      ..setClassroomId(sl<ClassroomListCubit>().chosenClassroomId)
      ..fetch();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 8.h,
        ),
        child: SizedBox(
          height: 100,
          child: BlocBuilder<UserCubit, User?>(
            bloc: sl<UserCubit>(),
            builder: (context, state) {
              return CustomPagedList(
                controller: sl<HomeworkCubit>().controller,
                itemBuilder: (item) => state?.role == UserType.teacher
                    ? TeacherHomeworkItemWidget(item: item)
                    : StudentHomeworkItemWidget(item: item),
                shimmerItemHeight: 100.h,
                emptyText: lz.noHomework,
              );
            },
          ),
        ));
  }
}
