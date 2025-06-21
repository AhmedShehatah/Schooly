import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/di/injection_container.dart';
import '../../../core/cubits/media_download_cubit.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/theme/palette.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/utils/dimensions.dart';
import '../../../core/utils/pop_ups.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/homework/entities/homework.dart';

class HomeworkCardWidget extends StatelessWidget {
  final Homework item;

  const HomeworkCardWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Assets.icons.homeworkFile.svg(),
          title: CustomText.s12(
            item.fileName,
            color: Palette.character.primary85,
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
  return Padding(
    padding: Dimensions.defaultPagePadding,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomText.s16(
          "Homework Actions",
          bold: true,
        ),
        20.verticalSpace,
        GestureDetector(
          onTap: () {
            sl<DownloadAttachmentCubit>()
                .downloadAttachment(fileName: item.fileName, url: item.fileUrl);
            PopUps.showDownloadDialog(ctx, item.fileName);
          },
          child: Row(
            children: [
              Assets.icons.download.svg(height: 20.h, width: 20.w),
              10.horizontalSpace,
              CustomText.s12(lz.addComment)
            ],
          ),
        ),
        10.verticalSpace,
        Row(
          children: [
            Assets.icons.download.svg(height: 20.h, width: 20.w),
            10.horizontalSpace,
            CustomText.s12(lz.addComment)
          ],
        )
      ],
    ),
  );
}
