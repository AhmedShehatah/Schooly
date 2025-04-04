import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/theme/palette.dart';
import '../../../core/widgets/fields/custom_input.dart';
import '../../../core/widgets/text/custom_text.dart';
import 'post_item_widget.dart';

class PostListWidget extends StatefulWidget {
  const PostListWidget({Key? key}) : super(key: key);

  @override
  State<PostListWidget> createState() => _PostListWidgetState();
}

class _PostListWidgetState extends State<PostListWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
            child: Column(
              children: [
                CustomInput(
                  title: '',
                  hint: 'اكتب شيئًا لطلابك هنا...',
                  hintColor: Palette.character.disabledPlaceholder25,
                  controller: TextEditingController(),
                  prefix: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                    child: CircleAvatar(
                      radius: 12.r,
                      backgroundColor: Palette.yellow.shade400,
                      backgroundImage:
                          AssetImage(Assets.images.profilePost.path),
                    ),
                  ),
                  backgroundColor: Palette.primary.color1,
                  showAsterisk: false,
                ),
                22.verticalSpace,
                Row(children: [
                  CustomText.s14('أخر المنشورات',
                      color: Palette.character.title85),
                  const Spacer(),
                  InkWell(
                    child: Assets.icons.slider3Horizontal
                        .svg(width: 18.w, height: 18.h),
                    onTap: () {},
                  ),
                ]),
              ],
            ),
          ),
          8.verticalSpace,
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return const PostItemWidget();
            },
          ),
        ],
      ),
    );
  }
}
