import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/shared_preferences/prefs_keys.dart';
import '../../core/shared_preferences/shared_prefs.dart';
import '../../presentation/classrooms/pages/class_details_screen.dart';
import '../../presentation/classrooms/pages/classrooms_screen.dart';
import '../../presentation/auth/forget_password/pages/forget_password_screen.dart';
import '../../presentation/auth/reset_password/pages/reset_password_screen.dart';
import '../../presentation/auth/verify_code/pages/otp_screen.dart';
import '../../presentation/lesson_meeting/pages/lesson_attendance_screen.dart';
import '../../presentation/lesson_meeting/pages/lesson_meeting_screen.dart';
import '../../presentation/main/cubits/bottom_navigation_cubit.dart';
import '../../presentation/main/pages/main_screen.dart';

import '../../presentation/splash/pages/splash_screen.dart';
import '../../presentation/home/pages/home_screen.dart';
import '../../presentation/auth/login/pages/login_screen.dart';
import '../di/injection_container.dart';

class AppRouter {
  final _rootNavigatorKey = GlobalKey<NavigatorState>();
  // ignore: unused_field
  final _shellNavigatorKey = GlobalKey<NavigatorState>();
  String get _initialLocation {
    if (sl<SharedPrefs>().getBool(key: PrefsKeys.isLogged) ?? false) {
      return HomeScreen.routeName;
    } else {
      return LoginScreen.routeName;
    }
  }

  late final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: _initialLocation,
    routes: [
      GoRoute(
        name: SplashScreen.routeName,
        path: SplashScreen.routeName,
        pageBuilder: (_, state) => _buildPageWithTransition(
          const SplashScreen(),
          state,
        ),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (_, __, child) => MainScreen(child: child),
        routes: [
          GoRoute(
              name: HomeScreen.routeName,
              path: HomeScreen.routeName,
              pageBuilder: (_, state) {
                return _buildPageWithTransition(
                  const HomeScreen(),
                  state,
                );
              }),
          GoRoute(
            name: '/notifications',
            path: '/notifications',
            pageBuilder: (context, state) {
              return _buildPageWithTransition(
                  const Center(child: Text('Notifications Screen')), state);
            },
          ),
          GoRoute(
            name: '/schedule',
            path: '/schedule',
            pageBuilder: (context, state) {
              return _buildPageWithTransition(
                  const Center(child: Text('Schedule Screen')), state);
            },
          ),
          GoRoute(
              name: ClassesScreen.routeName,
              path: ClassesScreen.routeName,
              pageBuilder: (context, state) {
                sl<BottomNavigationCubit>().changePage(3);

                return _buildPageWithTransition(const ClassesScreen(), state);
              },
              routes: [
                GoRoute(
                  name: ClassDetailsScreen.routeName,
                  path: ClassDetailsScreen.routeName,
                  pageBuilder: (context, state) {
                    return _buildPageWithTransition(
                        ClassDetailsScreen(
                          classroomId: state.extra as String,
                        ),
                        state);
                  },
                ),
              ]),
          GoRoute(
            name: '/settings',
            path: '/settings',
            pageBuilder: (context, state) {
              sl<BottomNavigationCubit>().changePage(4);

              return _buildPageWithTransition(
                  const Center(child: Text('Settings Screen')), state);
            },
          ),
        ],
      ),
      GoRoute(
        name: LessonAttendanceScreen.routeName,
        path: LessonAttendanceScreen.routeName,
        pageBuilder: (_, state) => _buildPageWithTransition(
          LessonAttendanceScreen(
            lessonId: state.extra as String,
          ),
          state,
        ),
      ),
      GoRoute(
        name: CallScreen.routeName,
        path: CallScreen.routeName,
        pageBuilder: (_, state) => _buildPageWithTransition(
          CallScreen(
            channelName: (state.extra as Map<String, dynamic>)['channel'],
            token: (state.extra as Map<String, dynamic>)['token'],
          ),
          state,
        ),
      ),
      GoRoute(
        name: ForgetPasswordScreen.routeName,
        path: ForgetPasswordScreen.routeName,
        pageBuilder: (_, state) => _buildPageWithTransition(
          const ForgetPasswordScreen(),
          state,
        ),
      ),
      GoRoute(
        name: OtpScreen.routeName,
        path: OtpScreen.routeName,
        pageBuilder: (_, state) => _buildPageWithTransition(
          OtpScreen(email: state.extra as String),
          state,
        ),
      ),
      GoRoute(
        name: ResetPasswordScreen.routeName,
        path: ResetPasswordScreen.routeName,
        pageBuilder: (_, state) => _buildPageWithTransition(
          ResetPasswordScreen(email: state.extra as String),
          state,
        ),
      ),
      GoRoute(
          name: LoginScreen.routeName,
          path: LoginScreen.routeName,
          pageBuilder: (_, state) => _buildPageWithTransition(
                const LoginScreen(),
                state,
              ),
          redirect: (_, __) {
            if (sl<SharedPrefs>().getBool(key: PrefsKeys.firstTime) ?? true) {
              return SplashScreen.routeName;
            }
            return null;
          }),
    ],
  );

  CustomTransitionPage _buildPageWithTransition(
      Widget child, GoRouterState state) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // Define the transition animation
        const begin = Offset(1.0, 0.0); // Slide from right to left
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
