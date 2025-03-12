import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../app/di/injection_container.dart';
import '../../../../core/assets/assets.gen.dart';
import '../../../../core/localization/localization_manager.dart';
import '../../../../core/states/base_state.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../../core/widgets/fields/custom_input.dart';
import '../../../../core/widgets/text/custom_text.dart';
import '../../../../domain/auth/use_cases/forget_password_use_case/forget_password_use_case.dart';
import '../../login/pages/login_screen.dart';
import '../../verify_code/pages/otp_screen.dart';
import '../cubit/forget_password_cubit.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);
  static const String routeName = '/change-password-screen';
  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final _localization = sl<LocaleCubit>().appLocalizations;
  final _emailController = TextEditingController();
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
                    onPressed: () {
                      context.goNamed(LoginScreen.routeName);
                    },
                    icon: Assets.images.back.image(
                      alignment: Alignment.topRight,
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                  10.verticalSpace,
                  CustomText.s24(_localization.changePassword, bold: true),
                  10.verticalSpace,
                  CustomInput(
                    title: _localization.email,
                    controller: _emailController,
                  ),
                  24.verticalSpace,
                  BlocConsumer<ForgetPasswordCubit, BaseState>(
                    bloc: sl<ForgetPasswordCubit>(),
                    listenWhen: (o, n) => o != n,
                    listener: (context, state) {
                      state.whenOrNull(
                        success: (data) => context.goNamed(OtpScreen.routeName,
                            extra: _emailController.text),
                      );
                    },
                    builder: (context, state) {
                      return CustomButton(
                        isLoading: state.isLoading,
                        isExpanded: true,
                        text: _localization.sendChangeLink,
                        onPressed: () {
                          if (!_formKey.currentState!.validate()) return;
                          sl<ForgetPasswordCubit>().forgetPassword(
                            params: ForgetPasswordParams(
                                email: _emailController.text),
                          );
                        },
                      );
                    },
                  ),
                  24.verticalSpace,
                  Center(
                    child: TextButton(
                      onPressed: () {
                        context.goNamed(LoginScreen.routeName);
                      },
                      child: CustomText.s17(
                        _localization.doYouWantToLogIn,
                      ),
                    ),
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
