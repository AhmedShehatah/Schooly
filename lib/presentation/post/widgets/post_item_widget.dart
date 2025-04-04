import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/theme/palette.dart';
import '../../../core/widgets/text/custom_text.dart';

class PostItemWidget extends StatelessWidget {
  const PostItemWidget({Key? key}) : super(key: key);

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
                  'أيمن أحمد',
                  color: Palette.character.primary85,
                ),
                subtitle: CustomText.s11(
                  '@AymanAhmed',
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
                'يا شباب، خلوا بالكم إن الكويز ده عليه درجات مهمة، فركزوا كويس وحاولوا تجاوبوا كل الأسئلة. الوقت المتبقي للاختبار 10 دقايق، فراجع إجاباتك قبل ما تسلم.',
              ),
              12.verticalSpace,
              Image(image: AssetImage(Assets.images.post.path)),
              12.verticalSpace,
              Row(children: [
                CustomText.s11('قبل 5 ساعة',
                    color: Palette.character.secondary45),
              ])
            ],
          ),
        ),
      ],
    );
  }
}
