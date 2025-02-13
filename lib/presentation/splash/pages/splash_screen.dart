import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/shared_preferences/prefs_keys.dart';
import '../../../core/shared_preferences/shared_prefs.dart';
import '../../../core/theme/palette.dart';
import '../../../core/utils/dimensions.dart';
import '../../../core/widgets/buttons/custom_button.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../auth/login/pages/login_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final _localization = sl<LocaleCubit>().appLocalizations;
  static const routeName = '/splash-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: Dimensions.defaultPagePadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Transform.scale(
                scale: 1.5,
                child: Assets.images.splash.image(
                  width: 1.sw,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText.s46(
                    _localization.yourSchool,
                    bold: true,
                    color: Palette.primary.color8,
                  ),
                  CustomText.s48(
                    _localization.inYourBucket,
                    bold: true,
                    color: Palette.character.primary85,
                  ),
                  16.verticalSpace,
                  Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Palette.character.secondary45,
                      ),
                      children: [
                        TextSpan(text: _localization.digitalTeachingIsFuture),
                        TextSpan(
                          text: ' ${_localization.schooly}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const TextSpan(text: '\n'),
                        TextSpan(text: _localization.schoolyIsLinkWithAi),
                      ],
                    ),
                  )
                ],
              ),
              CustomButton(
                text: _localization.startNow,
                onPressed: () {
                  sl<SharedPrefs>()
                      .saveBool(key: PrefsKeys.firstTime, value: false);
                  context.goNamed(LoginScreen.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
