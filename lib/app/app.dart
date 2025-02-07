import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';

import '../core/localization/app_localizations.dart';
import '../core/localization/localization_manager.dart';
import '../core/shared_preferences/prefs_keys.dart';
import '../core/shared_preferences/shared_prefs.dart';
import '../core/theme/app_theme.dart';
import '../presentation/auth/login/pages/login_screen.dart';
import '../presentation/upcoming_classes/pages/upcoming_classes_screen.dart';
import 'di/injection_container.dart';
import 'route_manager/app_router.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleCubit, Locale>(
      bloc: sl<LocaleCubit>(),
      builder: (context, state) {
        return ScreenUtilInit(
          minTextAdapt: true,
          splitScreenMode: true,
          designSize: const Size(393, 852),
          builder: (context, child) => ToastificationWrapper(
            child: MaterialApp.router(
              key: ValueKey<String>(state.languageCode),
              debugShowCheckedModeBanner: false,
              title: 'Schooly',
              theme: sl<AppTheme>().theme,
              routerConfig: sl<AppRouter>().router,
              locale: state,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
            ),
          ),
        );
      },
    );
  }
}
