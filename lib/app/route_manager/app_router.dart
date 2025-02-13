import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../presentation/classes/pages/classes_screen.dart';
import '../../presentation/home/pages/home_screen.dart';
import '../../presentation/lesson_meeting/pages/lesson_meeting_screen.dart';
import '../../presentation/upcoming_classes/pages/upcoming_classes_screen.dart';
import '../../presentation/auth/login/pages/login_screen.dart';

class AppRouter {
  final _rootNavigatorKey = GlobalKey<NavigatorState>();
  // ignore: unused_field
  final _shellNavigatorKey = GlobalKey<NavigatorState>();

  late final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: HomeScreen.routeName,
    routes: [
      GoRoute(
        name: UpcomingClassesScreen.routeName,
        path: UpcomingClassesScreen.routeName,
        pageBuilder: (_, state) => _buildPageWithTransition(
          const UpcomingClassesScreen(),
          state,
        ),
      ),
      GoRoute(
        name: ClassesScreen.routeName,
        path: ClassesScreen.routeName,
        pageBuilder: (_, state) => _buildPageWithTransition(
          const ClassesScreen(),
          state,
        ),
      ),
      GoRoute(
        name: HomeScreen.routeName,
        path: HomeScreen.routeName,
        pageBuilder: (_, state) => _buildPageWithTransition(
          const HomeScreen(),
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
        name: LoginScreen.routeName,
        path: LoginScreen.routeName,
        pageBuilder: (_, state) => _buildPageWithTransition(
          const LoginScreen(),
          state,
        ),
      ),
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
