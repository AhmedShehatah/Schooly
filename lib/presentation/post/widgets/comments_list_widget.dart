import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/states/base_state.dart';
import '../../../core/theme/palette.dart';
import '../../../core/utils/date_utils.dart';
import '../../../core/widgets/fields/custom_input.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/classroom/entities/comment/comment.dart';
import '../../../domain/classroom/use_case/add_comment_use_case/add_comment_use_case.dart';
import '../cubits/add_comment_cubit.dart';
import '../cubits/posts_list_cubit.dart';
import '../../../core/utils/extensions.dart';

class CommentsListWidget extends StatefulWidget {
  const CommentsListWidget(
      {super.key,
      required this.comments,
      required this.postId,
      required this.classroomId});
  final List<Comment> comments;
  final int? postId;
  final String classroomId;

  @override
  State<CommentsListWidget> createState() => _CommentsListWidgetState();
}

class _CommentsListWidgetState extends State<CommentsListWidget> {
  final _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isButtonEnabled = false;
  @override
  void initState() {
    super.initState();
    sl<AddCommentCubit>()
      ..reset()
      ..setClassroomId(widget.postId ?? 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
              itemCount: widget.comments.length,
              itemBuilder: (context, index) {
                final comment = widget.comments[index];
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
            child: Form(
              key: _formKey,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: BlocConsumer<AddCommentCubit, BaseState>(
                      bloc: sl<AddCommentCubit>(),
                      listenWhen: (o, n) => o != n,
                      listener: (context, state) {
                        state.whenOrNull(success: (data) {
                          _controller.clear();
                          //TODO: handle refresh comments list
                          sl<PostsListCubit>()
                            ..reset()
                            ..setClassroomId(widget.classroomId)
                            ..fetch();
                          //  Navigator.of(context).pop();
                        });
                      },
                      builder: (context, state) {
                        return CustomInput(
                          onChanged: (value) {
                            setState(() {
                              isButtonEnabled = value.trim().isNotEmpty;
                            });
                          },
                          controller: _controller,
                          required: false,
                          hint: lz.addComment,
                          suffix: state.isLoading
                              ? const CircularProgressIndicator()
                              : IconButton(
                                  icon: Icon(Icons.send,
                                      color: Palette.primary.color6),
                                  onPressed: isButtonEnabled && !state.isLoading
                                      ? () {
                                          if (!_formKey.currentState!
                                              .validate()) return;

                                          sl<AddCommentCubit>().addComment(
                                            params: AddCommentParams(
                                              postId: widget.postId!,
                                              content: _controller.text.trim(),
                                            ),
                                          );
                                        }
                                      : null,
                                ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
