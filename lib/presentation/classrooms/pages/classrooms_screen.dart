import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/states/base_state.dart';
import '../../../core/utils/dimensions.dart';
import '../../../core/widgets/app_bars/custom_app_bar.dart';
import '../../../domain/classroom/entities/classroom/classroom.dart';
import '../cubits/classroom_list_cubit.dart';
import '../widgets/classroom_item_widget.dart';

class ClassesScreen extends StatefulWidget {
  const ClassesScreen({super.key});
  static const String routeName = '/classrooms-screen';

  @override
  State<ClassesScreen> createState() => _ClassesScreenState();
}

class _ClassesScreenState extends State<ClassesScreen> {
  @override
  void initState() {
    super.initState();
    sl<ClassroomListCubit>().getClassrooms();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: lz.yourClasses,
      ),
      body: BlocBuilder<ClassroomListCubit, BaseState<List<Classroom>>>(
        bloc: sl<ClassroomListCubit>(),
        builder: (context, state) => state.maybeMap(
          orElse: () => const SizedBox.shrink(),
          loading: (_) => const Center(child: CircularProgressIndicator()),
          success: (data) => Padding(
            padding: Dimensions.defaultPagePadding,
            child: ListView.separated(
              itemCount: data.data.length,
              separatorBuilder: (_, __) => 16.verticalSpace,
              itemBuilder: (context, index) => ClassroomItemWidget(
                classroom: data.data[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
