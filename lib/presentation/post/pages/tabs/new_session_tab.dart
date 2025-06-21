import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:toastification/toastification.dart';

import '../../../../app/di/injection_container.dart';
import '../../../../core/enums/enums.dart';
import '../../../../core/localization/localization_manager.dart';
import '../../../../core/states/base_state.dart';
import '../../../../core/utils/dimensions.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../../core/widgets/drop_down/custom_dropdown.dart';
import '../../../../core/widgets/fields/custom_input.dart';
import '../../../../core/widgets/pickers/custom_date_picker.dart';
import '../../../../core/widgets/pickers/custom_time_picker.dart';
import '../../../classrooms/cubits/classroom_list_cubit.dart';
import '../../cubits/add_session_cubit.dart';

class NewSessionTab extends StatefulWidget {
  const NewSessionTab({super.key, required this.classroomId});
  final String classroomId;
  @override
  State<NewSessionTab> createState() => _NewSessionTabState();
}

class _NewSessionTabState extends State<NewSessionTab> {
  final lessonType = ValueNotifier<LessonType?>(null);
  final sessionTitle = TextEditingController();
  final date = ValueNotifier<DateTime?>(null);
  final from = ValueNotifier<String?>(null);
  final to = ValueNotifier<String?>(null);

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    sessionTitle.dispose();
    lessonType.dispose();
    date.dispose();
    from.dispose();
    to.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimensions.defaultPagePadding,
      child: Form(
        key: formKey,
        child: Column(
          children: [
            CustomDropdown(
              title: lz.lessonType,
              items: LessonType.values,
              required: true,
              itemToString: (item) => item?.toName,
              value: lessonType,
            ),
            16.verticalSpace,
            CustomInput(
              title: lz.sessionTitle,
              controller: sessionTitle,
              backgroundColor: Colors.transparent,
            ),
            16.verticalSpace,
            CustomDatePicker(
              value: date,
            ),
            16.verticalSpace,
            Row(
              children: [
                Expanded(
                    child: CustomTimePicker(
                  value: from,
                  title: lz.from,
                  required: true,
                )),
                8.horizontalSpace,
                Expanded(
                    child: CustomTimePicker(
                  value: to,
                  title: lz.to,
                  required: true,
                )),
              ],
            ),
            16.verticalSpace,
            BlocConsumer<AddSessionCubit, BaseState<void>>(
              bloc: sl<AddSessionCubit>(),
              listener: (context, state) {
                state.mapOrNull(
                  success: (_) {
                    sl<AddSessionCubit>().reset();
                    reset();
                    formKey.currentState!.reset();
                    lz.schedule.showToast(type: ToastificationType.success);
                  },
                  failure: (f) => f.failure.message
                      .showToast(type: ToastificationType.error),
                );
              },
              builder: (context, state) {
                return CustomButton(
                  text: lz.post,
                  isLoading: state.isLoading,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      sl<AddSessionCubit>()
                        ..setParams(
                          classroomId: widget.classroomId,
                          title: sessionTitle.text,
                          date: DateFormat('yyyy-MM-dd').format(date.value!),
                          from: '${from.value}:00',
                          to: '${to.value}:00',
                          lessonType: lessonType.value,
                        )
                        ..addSession();
                    }
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }

  void reset() {
    lessonType.value = null;
    sessionTitle.clear();
    date.value = null;
    from.value = null;
    to.value = null;
    setState(() {});
  }
}
