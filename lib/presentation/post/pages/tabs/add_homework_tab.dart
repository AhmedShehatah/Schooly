import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';

import '../../../../app/di/injection_container.dart';
import '../../../../core/assets/assets.gen.dart';
import '../../../../core/cubits/media_upload_cubit.dart';
import '../../../../core/localization/localization_manager.dart';
import '../../../../core/states/base_state.dart';
import '../../../../core/theme/palette.dart';
import '../../../../core/utils/dimensions.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/utils/pop_ups.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../../core/widgets/custom_card.dart';
import '../../../../core/widgets/pickers/custom_date_picker.dart';
import '../../../../core/widgets/text/custom_text.dart';
import '../../../../domain/homework/use_cases/add_homework_use_case/add_homework_use_case.dart';
import '../../../../domain/lookups/entities/lesson.dart';
import '../../../../domain/media/entities/uploaded_file.dart';
import '../../../lookups/widgets/lessons_dropdown.dart';
import '../../cubits/add_homework_cubit.dart';

class AddHomeworkTab extends StatefulWidget {
  const AddHomeworkTab({super.key, required this.classRoomId});
  final String classRoomId;

  @override
  State<AddHomeworkTab> createState() => _AddHomeworkTabState();
}

class _AddHomeworkTabState extends State<AddHomeworkTab> {
  final ValueNotifier<Lesson?> lesson = ValueNotifier<Lesson?>(null);

  final ValueNotifier<DateTime?> date = ValueNotifier<DateTime?>(null);

  String? fileUrl;

  final _key = GlobalKey<FormState>();
  @override
  void dispose() {
    lesson.dispose();
    date.dispose();
    sl<MediaUploadCubit>().reset();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: Dimensions.defaultPagePadding,
        child: Form(
          key: _key,
          child: Column(
            children: [
              LessonsDropdown(
                  classRoomId: widget.classRoomId, lessonNotifier: lesson),
              8.verticalSpace,
              CustomDatePicker(
                value: date,
                title: lz.deadline,
              ),
              16.verticalSpace,
              SizedBox(
                width: double.infinity,
                child: BlocConsumer<MediaUploadCubit, BaseState<UploadedFile>>(
                  bloc: sl<MediaUploadCubit>(),
                  builder: (context, state) {
                    return CustomCard(
                        onPress: () async {
                          final homework =
                              await PopUps.pickFile(context, extensions: [
                            'pdf',
                            'doc',
                            'docx',
                            'txt',
                          ]);
                          if (homework == null) return;
                          sl<MediaUploadCubit>()
                              .uploadAttachment(path: homework.path);
                        },
                        child: state.maybeMap(
                            loading: (_) => const Center(
                                  child: CircularProgressIndicator(),
                                ),
                            failure: (error) {
                              return Column(
                                children: [
                                  CustomText.s14(lz.failedUpload,
                                      bold: true,
                                      color: Palette.character.danger),
                                ],
                              );
                            },
                            success: (data) => Column(
                                  children: [
                                    CustomText.s14(lz.fileUploadedSuccesfully,
                                        bold: true,
                                        color: Palette.character.mark),
                                    5.verticalSpace,
                                    CustomText.s14(data.data.fileName,
                                        color: Palette.primary.color10),
                                  ],
                                ),
                            orElse: () => Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Assets.icons.inbox.svg(),
                                    16.verticalSpace,
                                    CustomText.s14(
                                      lz.chooseFile,
                                      bold: true,
                                    ),
                                    4.verticalSpace,
                                  ],
                                )));
                  },
                  listener:
                      (BuildContext context, BaseState<UploadedFile> state) {
                    state.mapOrNull(
                        failure: (error) => error.failure.message
                            .showToast(type: ToastificationType.error),
                        success: (data) {
                          fileUrl = data.data.storedFileName;
                        });
                  },
                ),
              ),
              16.verticalSpace,
              BlocConsumer<AddHomeworkCubit, BaseState<void>>(
                listener: (ctx, state) {
                  state.mapOrNull(
                      success: (_) {
                        lz.homeworkUploaded
                            .showToast(type: ToastificationType.success);

                        context.pop();
                      },
                      failure: (error) => error.failure.message
                          .showToast(type: ToastificationType.error));
                },
                bloc: sl<AddHomeworkCubit>(),
                builder: (context, state) {
                  return CustomButton(
                      isLoading: state.maybeMap(
                          orElse: () => false, loading: (_) => true),
                      text: lz.post,
                      onPressed: () {
                        if (!_key.currentState!.validate()) return;
                        if (fileUrl == null) {
                          lz.pleaseChooseFile
                              .showToast(type: ToastificationType.error);
                          return;
                        }
                        if (!_key.currentState!.validate()) return;
                        sl<AddHomeworkCubit>().addHomework(AddHomeworkParams(
                            lessonId: lesson.value!.id,
                            deadline: date.value!,
                            fileUrl: fileUrl!));
                      });
                },
              )
            ],
          ),
        ));
  }
}
