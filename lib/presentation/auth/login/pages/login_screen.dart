import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../app/di/injection_container.dart';
import '../../../../core/assets/assets.gen.dart';
import '../../../../core/localization/localization_manager.dart';
import '../../../../core/states/base_state.dart';
import '../../../../core/theme/palette.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/utils/validators.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../../core/widgets/fields/custom_input.dart';
import '../../../../core/widgets/text/custom_text.dart';
import '../../../../domain/auth/use_cases/login_use_case/login_use_case.dart';
import '../../../home/pages/home_screen.dart';
import '../../forget_password/pages/forget_password_screen.dart';
import '../cubit/login_cubit.dart';
import '../widgets/login_with_face_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String routeName = '/login-screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    if (kDebugMode) {
      _emailController.text = 'teacher@example.com';
      _passwordController.text = 'string';
      setState(() {});
    }
  }

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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.images.login.image(height: 382.h),
                  CustomInput(
                    title: lz.email,
                    controller: _emailController,
                    validator: (value) => sl<Validators>().email(value),
                  ),
                  10.verticalSpace,
                  CustomInput.obscure(
                    title: lz.password,
                    controller: _passwordController,
                    validator: (value) => sl<Validators>().password(value),
                  ),
                  20.verticalSpace,
                  BlocConsumer<LoginCubit, BaseState>(
                    bloc: sl<LoginCubit>(),
                    listenWhen: (o, n) => o != n,
                    listener: (context, state) {
                      state.whenOrNull(
                        success: (data) =>
                            context.goNamed(HomeScreen.routeName),
                      );
                    },
                    builder: (context, state) {
                      return Row(
                        children: [
                          Expanded(
                            child: CustomButton(
                              isLoading: state.isLoading,
                              isExpanded: true,
                              text: lz.login,
                              onPressed: () {
                                if (!_formKey.currentState!.validate()) return;
                                sl<LoginCubit>().login(
                                  params: LoginParams(
                                    email: _emailController.text,
                                    password: _passwordController.text,
                                  ),
                                );
                              },
                            ),
                          ),
                          8.horizontalSpace,
                          ElevatedButton(
                              onPressed: () {
                                showGeneralDialog(
                                  context: context,
                                  barrierDismissible: true,
                                  barrierLabel:
                                      MaterialLocalizations.of(context)
                                          .modalBarrierDismissLabel,
                                  barrierColor: Colors.black.withOpacity(0.5),
                                  pageBuilder: (context, anim1, anim2) {
                                    return const LoginWithFaceWidget();
                                  },
                                  transitionBuilder:
                                      (context, anim1, anim2, child) {
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
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                  Palette.primary.color6,
                                ),
                              ),
                              child: const Icon(
                                Icons.face,
                                color: Colors.white,
                              ))
                        ],
                      );
                    },
                  ),
                  20.verticalSpace,
                  TextButton(
                      onPressed: () {
                        context.goNamed(ForgetPasswordScreen.routeName);
                      },
                      child: CustomText.s17(
                        lz.forgotPassword,
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
