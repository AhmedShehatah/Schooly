import 'dart:io';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../app/di/injection_container.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/states/base_state.dart';
import '../../../core/theme/palette.dart';
import '../../../core/utils/dimensions.dart';
import '../../../core/utils/extensions.dart';
import '../../../core/widgets/app_bars/custom_app_bar.dart';
import '../../../core/widgets/buttons/custom_button.dart';
import '../../../core/widgets/images/custom_image.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/upcoming_classes/entities/sessions/session.dart';
import '../cubits/camera_cubit.dart';
import '../cubits/join_meeting_cubit.dart';
import 'lesson_meeting_screen.dart';

class LessonAttendanceScreen extends StatefulWidget {
  const LessonAttendanceScreen({super.key, required this.lessonId});

  static const routeName = '/lesson_attendance_screen';
  final String lessonId;
  @override
  State<LessonAttendanceScreen> createState() => _LessonAttendanceScreenState();
}

class _LessonAttendanceScreenState extends State<LessonAttendanceScreen> {
  final _cubit = sl<CameraCubit>();

  @override
  void initState() {
    super.initState();
    _cubit.initCameras();
  }

  @override
  void dispose() {
    super.dispose();
    _cubit.controller.dispose();
  }

  File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: Dimensions.defaultPagePadding,
        child: BlocBuilder<CameraCubit, BaseState<void>>(
          bloc: _cubit,
          builder: (context, state) => state.maybeMap(
            orElse: () => const SizedBox.shrink(),
            loading: (_) => const Center(child: CircularProgressIndicator()),
            success: (_) => BlocConsumer<JoinMeetingCubit, BaseState<Session>>(
              bloc: sl<JoinMeetingCubit>(),
              listener: (context, joinState) {
                joinState.mapOrNull(success: (data) {
                  context.goNamed(LessonMeetingScreen.routeName, extra: {
                    'channel': widget.lessonId,
                    'token': data.data.token
                  });
                });
              },
              builder: (context, joinState) => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCameraImage(),
                  24.verticalSpace,
                  Opacity(
                    opacity: joinState.isLoading ? 0 : 1,
                    child: CustomButton(
                      text: joinState.maybeMap(
                          orElse: () => lz.takePhoto,
                          failure: (_) => lz.tryAgain),
                      isRed: joinState.maybeMap(
                        orElse: () => false,
                        failure: (_) => true,
                      ),
                      onPressed: () async {
                        final result = await _cubit.controller.takePicture();
                        image = File(result.path);
                        setState(() {});
                        sl<JoinMeetingCubit>()
                            .joinSession(widget.lessonId, File(result.path));
                      },
                    ),
                  ),
                  _buildImageComparison(joinState),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCameraImage() {
    return Column(
      children: [
        CustomText.s22(
          lz.verifyIdentity,
          bold: true,
          color: Palette.character.title85,
        ),
        24.verticalSpace,
        ClipOval(
          child: SizedBox(
            width: 240.w,
            height: 240.h,
            child: CameraPreview(
              _cubit.controller,
            ),
          ),
        ),
        24.verticalSpace,
        CustomText.s16(
          '${lz.holdPhoneSecurely}...',
          color: Palette.character.secondary45,
        ),
      ],
    );
  }

  Widget _buildImageComparison(BaseState state) {
    return Column(
      children: [
        if (state.isLoading)
          CustomText.s16(
            '${lz.comparingPhoto}...',
            color: Palette.character.title85,
          ),
        24.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomImage.circular(
              radius: 80.r,
              isImageFile: true,
              imageFile: Assets.images.profile.image(width: 40.w),
              file: image,
            ),
            Assets.icons.leftArrow.svg(),
            CustomImage.circular(
              radius: 80.r,
            ),
          ],
        ),
      ],
    );
  }
}
