import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/widgets/paged_list/custom_paged_list.dart';

import '../cubit/homework_cubit.dart';
import 'homework_card_widget.dart';

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
      ..setClassroomId(widget.classroomId)
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
          child: CustomPagedList(
            controller: sl<HomeworkCubit>().controller,
            itemBuilder: (item) => HomeworkCardWidget(item: item),
            shimmerItemHeight: 100.h,
            emptyText: lz.noHomework,
            shimmerPadding: EdgeInsets.symmetric(horizontal: 24.w),
          ),
        ));
  }
}
