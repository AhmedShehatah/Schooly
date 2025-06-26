import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/web.dart';
import 'package:toastification/toastification.dart';
import '../../../app/di/injection_container.dart';
import '../../../core/cubits/media_download_cubit.dart';
import '../../../core/cubits/media_upload_cubit.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/states/base_state.dart';
import '../../../core/theme/palette.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/utils/date_utils.dart';
import '../../../core/utils/dimensions.dart';
import '../../../core/utils/extensions.dart';
import '../../../core/utils/pop_ups.dart';
import '../../../core/widgets/buttons/custom_button.dart';
import '../../../core/widgets/status_card.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/homework/entities/homework.dart';
import '../../../domain/media/entities/uploaded_file.dart';
import '../../classrooms/cubits/classroom_list_cubit.dart';
import '../cubit/homework_cubit.dart';

class StudentHomeworkItemWidget extends StatelessWidget {
  final Homework item;

  const StudentHomeworkItemWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    bool isDeadlinePassed = item.deadline.isBefore(DateTime.now());

    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: StatusCard(
              title: isDeadlinePassed ? lz.completed : lz.active,
              titleColor: isDeadlinePassed
                  ? Palette.darkBlue.shade500
                  : Palette.green.shade600),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText.s12(
                item.fileName,
                color: Palette.character.primary85,
              ),
              CustomText.s11(
                '${lz.deadline} :${DateUtility.formatDateWithoutTime(item.deadline)}',
                color: Palette.character.primary85,
              ),
            ],
          ),
          subtitle: CustomText.s11(
            item.lessonTitle,
            color: Palette.character.secondary45,
          ),
          trailing: IconButton(
            icon: Assets.icons.dots.svg(width: 30),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (ctx) => buildHomeworkActions(ctx, item));
            },
          ),
        ),
        Divider(
          thickness: 1,
          color: Palette.neutral.color4,
        ),
      ],
    );
  }
}

Widget buildHomeworkActions(BuildContext ctx, Homework item) {
  bool canSubmit = item.deadline.isAfter(DateTime.now());
  return Padding(
    padding: Dimensions.defaultPagePadding,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText.s16(
              item.lessonTitle,
              bold: true,
            ),
            StatusCard(
                title: item.isSubmitted ? lz.submitted : lz.notSubmitted,
                titleColor: item.isSubmitted
                    ? Palette.green.shade600
                    : Palette.volcano.color6),
          ],
        ),
        20.verticalSpace,
        Row(
          children: [
            Expanded(
                child: CustomButton.outlined(
                    text: lz.downloadHomework,
                    onPressed: () {
                      sl<DownloadAttachmentCubit>().downloadAttachment(
                          url: item.fileUrl, fileName: item.fileName);
                      PopUps.showDownloadDialog(ctx, item.fileName);
                    })),
            if (canSubmit) ...[
              10.horizontalSpace,
              BlocListener<HomeworkCubit, HomeworkCubitState>(
                bloc: sl<HomeworkCubit>(),
                listener: (context, state) {
                  state.submitState.mapOrNull(success: (data) {
                    Logger().e(data);
                    sl<HomeworkCubit>()
                      ..reset()
                      ..setClassroomId(
                          sl<ClassroomListCubit>().chosenClassroomId)
                      ..fetch();
                    context.pop();
                  });
                },
                child: BlocListener<MediaUploadCubit, BaseState<UploadedFile>>(
                  bloc: sl<MediaUploadCubit>(),
                  listener: (context, state) {
                    state.mapOrNull(success: (file) {
                      sl<HomeworkCubit>().submitHomework(
                          fileUrl: file.data.storedFileName,
                          homeworkId: item.homeWorkId);
                    }, failure: (e) {
                      e.failure.message
                          .showToast(type: ToastificationType.error);
                    });
                  },
                  child: Expanded(
                      child: CustomButton.outlined(
                          backgroundColor: Palette.geekBlue.color5,
                          textColor: Palette.geekBlue.color8,
                          text: item.isSubmitted
                              ? lz.resubmitHomework
                              : lz.submitHomework,
                          onPressed: () async {
                            final file =
                                await PopUps.pickFile(ctx, extensions: ['pdf']);
                            if (file == null) return;
                            sl<MediaUploadCubit>()
                                .uploadAttachment(path: file.path);
                          })),
                ),
              ),
            ]
          ],
        ),
        10.verticalSpace,
      ],
    ),
  );
}
