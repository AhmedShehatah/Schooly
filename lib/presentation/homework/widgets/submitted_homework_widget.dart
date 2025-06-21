import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/cubits/media_download_cubit.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/utils/date_utils.dart';
import '../../../core/utils/pop_ups.dart';
import '../../../core/widgets/custom_card.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/homework/entities/submitted_homework.dart';

class SubmittedHomeworkWidget extends StatelessWidget {
  const SubmittedHomeworkWidget({super.key, required this.homework});
  final SubmittedHomework homework;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: CustomText.s11('${lz.fileName}: ${homework.fileName}')),
            IconButton(
              icon: Assets.icons.download.svg(width: 20.w, height: 20.w),
              onPressed: () {
                sl<DownloadAttachmentCubit>().downloadAttachment(
                    url: homework.fileUrl, fileName: homework.fileName);
                PopUps.showDownloadDialog(context, homework.fileName);
              },
            )
          ],
        ),
        CustomText.s12('${lz.studentName}:  ${homework.studentName}'),
        CustomText.s13(
            '${lz.submitDate}: ${DateUtility.formatDate(homework.submittedDate)}')
      ],
    ));
  }
}
