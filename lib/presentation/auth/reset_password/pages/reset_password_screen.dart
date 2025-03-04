import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../app/di/injection_container.dart';
import '../../../../../core/assets/assets.gen.dart';
import '../../../../../core/localization/localization_manager.dart';
import '../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../core/widgets/fields/custom_input.dart';
import '../../../../../core/widgets/text/custom_text.dart';
import '../../../../core/states/base_state.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../domain/auth/use_cases/reset_password_use_case/reset_password_use_case.dart';
import '../../../upcoming_classes/pages/upcoming_classes_screen.dart';
import '../cubit/reset_password_cubit.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);
  static const String routeName = '/reset-password-screen';
  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _localization = sl<LocaleCubit>().appLocalizations;
  final _newPasswordController = TextEditingController();
  final _emailController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Assets.images.back.image(
                      alignment: Alignment.topRight,
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                  10.verticalSpace,
                  CustomText.s24(_localization.resetPasswordTitle, bold: true),
                  10.verticalSpace,
                  CustomInput.obscure(
                    title: _localization.newPassword,
                    controller: _newPasswordController,
                  ),
                  10.verticalSpace,
                  CustomInput.obscure(
                    title: _localization.confirmPassword,
                    controller: _confirmPasswordController,
                  ),
                  24.verticalSpace,
                  BlocConsumer<ResetPasswordCubit, BaseState>(
                    bloc: sl<ResetPasswordCubit>(),
                    listenWhen: (o, n) => o != n,
                    listener: (context, state) {
                      state.whenOrNull(
                        success: (data) =>
                            context.goNamed(UpcomingClassesScreen.routeName),
                      );
                    },
                    builder: (context, state) {
                      return CustomButton(
                        isLoading: state.isLoading,
                        isExpanded: true,
                        text: _localization.resetPassword,
                        onPressed: () {
                          if (!_formKey.currentState!.validate()) return;
                          sl<ResetPasswordCubit>().resetPassword(
                            params: ResetPasswordParams(
                              email: _emailController.text,
                              newPassword: _newPasswordController.text,
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
