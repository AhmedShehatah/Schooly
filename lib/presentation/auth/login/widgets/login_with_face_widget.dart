import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/di/injection_container.dart';
import '../../../../core/localization/localization_manager.dart';
import '../../../../core/states/base_state.dart';
import '../../../../core/theme/palette.dart';
import '../../../../core/utils/dimensions.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/app_bars/custom_app_bar.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../../core/widgets/text/custom_text.dart';
import '../../../../domain/auth/entities/user.dart';
import '../../../home/pages/home_screen.dart';
import '../../../lesson_meeting/cubits/camera_cubit.dart';
import '../cubit/login_cubit.dart';

class LoginWithFaceWidget extends StatefulWidget {
  const LoginWithFaceWidget({super.key});

  @override
  State<LoginWithFaceWidget> createState() => _LoginWithFaceWidgetState();
}

class _LoginWithFaceWidgetState extends State<LoginWithFaceWidget> {
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
            success: (_) => Column(
              children: [
                _buildCameraImage(),
                24.verticalSpace,
                BlocConsumer<LoginCubit, BaseState<User>>(
                  bloc: sl<LoginCubit>(),
                  listener: (context, state) {
                    state.whenOrNull(
                      success: (data) {
                        context.pop();
                        context.goNamed(HomeScreen.routeName);
                      },
                    );
                  },
                  builder: (context, state) {
                    return CustomButton(
                      isLoading: state.isLoading,
                      text: lz.login,
                      onPressed: () async {
                        final image = await _cubit.controller.takePicture();
                        sl<LoginCubit>().loginWithFace(file: File(image.path));
                      },
                    );
                  },
                ),
              ],
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
}
