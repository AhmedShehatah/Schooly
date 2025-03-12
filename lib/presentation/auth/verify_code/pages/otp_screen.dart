import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../app/di/injection_container.dart';
import '../../../../core/assets/assets.gen.dart';
import '../../../../core/design/otp_field/custom_otp_field.dart';
import '../../../../core/localization/localization_manager.dart';
import '../../../../core/states/base_state.dart';
import '../../../../core/theme/palette.dart';
import '../../../../core/utils/date_utils.dart';
import '../../../../core/utils/dimensions.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../../core/widgets/text/custom_text.dart';
import '../../../../domain/auth/use_cases/check_otp_use_case/check_otp_use_case.dart';
import '../../../../domain/auth/use_cases/forget_password_use_case/forget_password_use_case.dart';
import '../../forget_password/cubit/forget_password_cubit.dart';
import '../../forget_password/pages/forget_password_screen.dart';
import '../../reset_password/pages/reset_password_screen.dart';
import '../cubit/check_otp_cubit.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key, required this.email});
  static const String routeName = '/otp';
  final String email;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _localization = sl<LocaleCubit>().appLocalizations;
  final _otpController = TextEditingController();
  final ValueNotifier<int> _remainingTime = ValueNotifier(600);
  final ValueNotifier<bool> _isTimerRunning = ValueNotifier(true);
  Timer? _timer;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  context.goNamed(ForgetPasswordScreen.routeName);
                },
                icon: Assets.images.back.image(
                  alignment: Alignment.topRight,
                  width: 24.w,
                  height: 24.h,
                ),
              ),
              10.verticalSpace,
              CustomText.s24(_localization.changePassword, bold: true),
              _buildResetPassword(),
            ],
          ),
        ),
      )),
    );
  }

  Widget _buildResetPassword() {
    return Padding(
      padding: Dimensions.cardInternalPadding,
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            49.verticalSpace,
            CustomText.s16(
              _localization.checkPhoneContent,
              color: Palette.neutral.color7,
            ),
            18.verticalSpace,
            OTPTextField(
              maxLength: 6,
              controller: _otpController,
            ),
            15.verticalSpace,
            BlocConsumer<CheckOtpCubit, BaseState>(
              bloc: sl<CheckOtpCubit>(),
              listenWhen: (o, n) => o != n,
              listener: (context, state) {
                state.whenOrNull(
                  success: (data) => context.goNamed(
                      ResetPasswordScreen.routeName,
                      extra: widget.email),
                );
              },
              builder: (context, state) {
                return CustomButton(
                  isLoading: state.maybeMap(
                    orElse: () => false,
                    loading: (_) => true,
                  ),
                  text: _localization.checkCode,
                  onPressed: () {
                    if (!_formKey.currentState!.validate()) return;
                    sl<CheckOtpCubit>().verifyCode(
                      params: CheckOtpParams(
                        code: _otpController.text,
                        email: widget.email,
                      ),
                    );
                  },
                  isExpanded: true,
                );
              },
            ),
            18.verticalSpace,
            _buildResendCodeButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildResendCodeButton() {
    return ValueListenableBuilder<int>(
      valueListenable: _remainingTime,
      builder: (context, remainingTime, child) {
        return ValueListenableBuilder<bool>(
          valueListenable: _isTimerRunning,
          builder: (context, isTimerRunning, child) {
            return BlocConsumer<ForgetPasswordCubit, BaseState>(
              bloc: sl<ForgetPasswordCubit>(),
              listener: (context, state) {
                state.mapOrNull(
                  success: (value) {
                    _startTimer();
                  },
                );
              },
              builder: (context, state) {
                return TextButton(
                    onPressed: isTimerRunning
                        ? null
                        : () {
                            sl<ForgetPasswordCubit>().forgetPassword(
                              params: ForgetPasswordParams(
                                email: widget.email,
                              ),
                            );
                          },
                    child: state.maybeMap(
                      orElse: () => CustomText.s16(
                        !isTimerRunning
                            ? _localization.resendCodeNow
                            : _localization.resendCode(
                                DateUtility.formatDuration(remainingTime)),
                        color: !isTimerRunning
                            ? Palette.primary.color6
                            : Palette.neutral.color7,
                      ),
                      loading: (value) => const CircularProgressIndicator(),
                    ));
              },
            );
          },
        );
      },
    );
  }

  void _startTimer() {
    _isTimerRunning.value = true;
    _remainingTime.value = 600;
    _timer?.cancel();
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (_remainingTime.value > 0) {
          _remainingTime.value--;
        } else {
          _timer?.cancel();
          _isTimerRunning.value = false;
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _otpController.dispose();
    _timer?.cancel();
  }
}
