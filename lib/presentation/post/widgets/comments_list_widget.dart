import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/theme/palette.dart';
import '../../../core/utils/date_utils.dart';
import '../../../core/widgets/fields/custom_input.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/classroom/entities/comment/comment.dart';

class CommentsListWidget extends StatelessWidget {
  const CommentsListWidget({super.key, required this.comments});
  final List<Comment> comments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: CustomText.s16(lz.comments),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: comments.length,
              itemBuilder: (context, index) {
                final comment = comments[index];
                return ListTile(
                  leading: CircleAvatar(
                    radius: 20.r,
                    backgroundColor: Palette.yellow.shade400,
                    backgroundImage: AssetImage(Assets.images.profilePost.path),
                  ),
                  title: CustomText.s14(
                    comment.authorName,
                    bold: true,
                  ),
                  subtitle: CustomText.s12(comment.content),
                  trailing: CustomText.s10(
                      DateUtility.dateToSinceFormat(
                          DateTime.parse(comment.createdAt)),
                      color: Palette.character.secondary45),
                );
              },
            ),
          ),
          // Add comment section
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: CustomInput(
                  required: false,
                  hint: lz.addComment,
                  suffix: IconButton(
                    icon: Icon(Icons.send, color: Palette.primary.color6),
                    onPressed: () {},
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
