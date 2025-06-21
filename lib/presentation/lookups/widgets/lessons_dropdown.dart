import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/states/base_state.dart';
import '../../../core/widgets/drop_down/custom_dropdown.dart';
import '../../../domain/lookups/entities/lesson.dart';
import '../../../domain/lookups/use_cases/get_lessons_use_case/get_lessons_use_case.dart';
import '../cubit/lessons_cubit.dart';

class LessonsDropdown extends StatefulWidget {
  const LessonsDropdown(
      {super.key, required this.classRoomId, required this.lessonNotifier});
  final String classRoomId;
  final ValueNotifier<Lesson?> lessonNotifier;
  @override
  State<LessonsDropdown> createState() => _LessonsDropdownState();
}

class _LessonsDropdownState extends State<LessonsDropdown> {
  @override
  void initState() {
    sl<LessonsCubit>()
        .getLessons(params: GetLessonsParams(classRoomId: widget.classRoomId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LessonsCubit, BaseState<List<Lesson>>>(
        bloc: sl<LessonsCubit>(),
        builder: (context, state) {
          return CustomDropdown<Lesson>(
              required: true,
              title: lz.lesson,
              items: state.maybeWhen(success: (data) => data, orElse: () => []),
              itemToString: (item) => item?.title,
              value: widget.lessonNotifier);
        });
  }
}
