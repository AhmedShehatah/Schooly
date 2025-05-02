import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/theme/palette.dart';
import '../../../core/utils/date_utils.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/classroom/entities/post/post.dart';
import 'comments_list_widget.dart';

class PostItemWidget extends StatelessWidget {
  const PostItemWidget(
      {Key? key, required this.post, required this.classroomId})
      : super(key: key);
  final Post post;
  final String classroomId;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: 1,
          color: Palette.neutral.color5,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 4.h),
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  radius: 24.r,
                  backgroundColor: Palette.yellow.shade400,
                  backgroundImage: AssetImage(Assets.images.profilePost.path),
                ),
                title: CustomText.s12(
                  post.authorName,
                  color: Palette.character.primary85,
                ),
                subtitle: CustomText.s11(
                  '@${post.authorName.split(' ').join()}',
                  color: Palette.character.secondary45,
                ),
                trailing: InkWell(
                  child: Icon(
                    Icons.more_horiz,
                    color: Palette.character.secondary45,
                    size: 24.sp,
                  ),
                  onTap: () {},
                ),
              ),
              CustomText.s13(
                post.content,
              ),
              12.verticalSpace,
              InkWell(
                onTap: () => _showCommentsDialog(context),
                child: Row(
                  children: [
                    // Comments button
                    Row(
                      children: [
                        Icon(
                          Icons.chat_bubble_outline_rounded,
                          size: 16.sp,
                          color: Palette.character.secondary45,
                        ),
                        4.horizontalSpace,
                        CustomText.s11(
                          '${post.comments.length} ${lz.comments}',
                          color: Palette.character.secondary45,
                        ),
                      ],
                    ),
                    const Spacer(),
                    CustomText.s11(
                      DateUtility.dateToSinceFormat(
                          DateTime.parse(post.createdAt)),
                      color: Palette.character.secondary45,
                    ),
                  ],
                ),
              ),
              8.verticalSpace,
            ],
          ),
        ),
      ],
    );
  }

  // Function to show comments dialog

  void _showCommentsDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black.withOpacity(0.5),
      pageBuilder: (context, anim1, anim2) {
        return CommentsListWidget(
          comments: post.comments,
          postId: post.id,
          classroomId: classroomId,
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0))
              .animate(anim1),
          child: child,
        );
      },
    );
  }
}
