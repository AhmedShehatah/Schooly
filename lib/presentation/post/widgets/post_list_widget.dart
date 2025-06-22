import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/di/injection_container.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/cubits/media_download_cubit.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/states/base_state.dart';
import '../../../core/theme/palette.dart';
import '../../../core/widgets/fields/custom_input.dart';
import '../../../core/widgets/images/custom_image.dart';
import '../../../core/widgets/paged_list/custom_paged_list.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../cubits/posts_list_cubit.dart';
import '../pages/add_content_tabs_screen.dart';
import 'post_item_widget.dart';

class PostListWidget extends StatefulWidget {
  const PostListWidget({Key? key, required this.classroomId}) : super(key: key);
  static const String routeName = '/post-list-widget';

  final String classroomId;
  @override
  State<PostListWidget> createState() => _PostListWidgetState();
}

class _PostListWidgetState extends State<PostListWidget> {
  @override
  void initState() {
    super.initState();

    sl<PostsListCubit>()
      ..reset()
      ..setClassroomId(widget.classroomId)
      ..fetch();
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
                  hint: lz.writeToStudents,
                  hintColor: Palette.character.disabledPlaceholder25,
                  prefix: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                    child: BlocBuilder<DownloadAttachmentCubit,
                        BaseState<Uint8List>>(
                      bloc: sl<DownloadAttachmentCubit>(),
                      builder: (context, downloadState) {
                        return downloadState.maybeWhen(
                          success: (data) => CustomImage.circular(
                            radius: 36.r,
                            memoryImageBytes: data,
                          ),
                          failure: (_) => CustomImage.circular(
                            radius: 36.r,
                            image: Assets.images.profilePost.path,
                          ),
                          loading: () => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          orElse: () => CustomImage.circular(
                            radius: 36.r,
                            image: Assets.images.profilePost.path,
                          ),
                        );
                      },
                    ),
                  ),
                  backgroundColor: Palette.primary.color1,
                  required: false,
                  editable: false,
                  onPressed: () {
                    showGeneralDialog(
                      context: context,
                      barrierDismissible: true,
                      barrierLabel: MaterialLocalizations.of(context)
                          .modalBarrierDismissLabel,
                      barrierColor: Colors.black.withOpacity(0.5),
                      pageBuilder: (context, anim1, anim2) {
                        return AddContentTabsScreen(
                          classRoomId: widget.classroomId,
                        );
                      },
                      transitionBuilder: (context, anim1, anim2, child) {
                        return SlideTransition(
                          position: Tween(
                                  begin: const Offset(0, 1),
                                  end: const Offset(0, 0))
                              .animate(anim1),
                          child: child,
                        );
                      },
                    );
                  },
                  enabled: true,
                ),
                22.verticalSpace,
                Row(children: [
                  CustomText.s14(lz.latestPosts,
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
          SizedBox(
            height: 1.sh * 0.6,
            child: CustomPagedList(
              controller: sl<PostsListCubit>().controller,
              itemBuilder: (item) =>
                  PostItemWidget(post: item, classroomId: widget.classroomId),
              shimmerItemHeight: 100.h,
              emptyText: lz.noPosts,
              shimmerPadding: EdgeInsets.symmetric(horizontal: 24.w),
            ),
          )
        ],
      ),
    );
  }
}
