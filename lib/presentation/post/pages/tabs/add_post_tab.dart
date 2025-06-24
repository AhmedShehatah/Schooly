import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/di/injection_container.dart';
import '../../../../core/assets/assets.gen.dart';
import '../../../../core/cubits/user_cubit.dart';
import '../../../../core/localization/localization_manager.dart';

import '../../../../core/states/base_state.dart';
import '../../../../core/theme/palette.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../../core/widgets/fields/custom_input.dart';
import '../../../../core/widgets/images/custom_image.dart';
import '../../../../core/widgets/text/custom_text.dart';
import '../../../../domain/auth/entities/user.dart';
import '../../../../domain/classroom/use_case/add_post_use_case/add_post_use_case.dart';
import '../../cubits/add_post_cubit.dart';
import '../../cubits/posts_list_cubit.dart';

class AddPostTab extends StatefulWidget {
  const AddPostTab({Key? key, required this.classRoomId}) : super(key: key);
  static const String routeName = '/add-post-widget';
  final String classRoomId;

  @override
  State<AddPostTab> createState() => _AddPostTabState();
}

class _AddPostTabState extends State<AddPostTab> {
  final _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    sl<AddPostCubit>()
      ..reset()
      ..setClassroomId(widget.classRoomId);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 4.h),
      child: Form(
        key: _formKey,
        child: BlocBuilder<UserCubit, User?>(
          bloc: sl<UserCubit>(),
          builder: (context, user) {
            return Column(
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: CustomImage.circular(
                          radius: 48.r,
                          image: user?.profilePictureUrl ?? '',
                        ),
                        title: CustomText.s12(
                          user?.name,
                          color: Palette.character.primary85,
                        ),
                        subtitle: CustomText.s11(
                          '@${user?.name}',
                          color: Palette.character.secondary45,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                    height: 250.h,
                    child: SingleChildScrollView(
                      child: CustomInput(
                        ///TODO: Align start
                        controller: _controller,
                        hint: lz.writeSomething,
                        hintColor: Palette.character.disabledPlaceholder25,
                        backgroundColor: Palette.character.primaryInverse,
                        required: false,
                        editable: true,
                        border: true,
                        onChanged: (value) {
                          setState(() {
                            isButtonEnabled = value.trim().isNotEmpty;
                          });
                        },
                      ),
                    )),
                65.verticalSpace,
                BlocConsumer<AddPostCubit, BaseState>(
                  bloc: sl<AddPostCubit>(),
                  listenWhen: (o, n) => o != n,
                  listener: (context, state) {
                    state.whenOrNull(success: (data) {
                      _controller.clear();
                      sl<PostsListCubit>()
                        ..reset()
                        ..setClassroomId(widget.classRoomId)
                        ..fetch();
                      Navigator.of(context).pop();
                    });
                  },
                  builder: (context, state) {
                    return CustomButton(
                      isLoading: state.isLoading,
                      isExpanded: true,
                      text: lz.post,
                      onPressed: isButtonEnabled && !state.isLoading
                          ? () {
                              if (!_formKey.currentState!.validate()) return;
                              sl<AddPostCubit>().addPost(
                                  params: AddPostParams(
                                content: _controller.text,
                                classRoomId: widget.classRoomId,
                              ));
                            }
                          : null,
                      backgroundColor:
                          !isButtonEnabled ? Palette.neutral.color4 : null,
                      textColor: !isButtonEnabled
                          ? Palette.character.disabledPlaceholder25
                          : null,
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
