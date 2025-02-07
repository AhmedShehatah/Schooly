import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../app/di/injection_container.dart';
import '../../../../app/route_manager/app_router.dart';
import '../../../../core/localization/localization_manager.dart';
import '../../../../core/states/base_state.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../../core/widgets/fields/custom_input.dart';
import '../../../../core/widgets/text/custom_text.dart';
import '../../../../domain/auth/usecases/login_use_case/login_use_case.dart';
import '../cubit/login_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String routeName = '/login-screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _localization = sl<LocaleCubit>().appLocalizations;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  /*@override
  void initState() {
    super.initState();
    sl<LoginCubit>();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 382,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/loginimage.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            CustomInput(
              title: _localization.email,
            ),
            10.verticalSpace,
            CustomInput.obscure(controller: _passwordController),
            20.verticalSpace,
            BlocConsumer<LoginCubit, BaseState>(
              bloc: sl<LoginCubit>(),
              listenWhen: (o, n) => o != n,
              listener: (context, state) {
                state.whenOrNull(
                  success: (data) => sl<AppRouter>(),
                );
              },
              builder: (context, state) {
                return CustomButton(
                  isLoading: state.maybeMap(
                    loading: (_) => true,
                    orElse: () => false,
                  ),
                  isExpanded: true,
                  text: _localization.login,
                  onPressed: () {
                    if (!_formKey.currentState!.validate()) return;
                    sl<LoginCubit>().login(
                      params: LoginParams(
                        email: _emailController.text,
                        password: _passwordController.text,
                      ),
                    );
                  },
                );
              },
            ),
            20.verticalSpace,
            CustomText.s11(sl<LocaleCubit>().appLocalizations.forgotPassword),
          ],
        ),
      ),
    );
  }
}
