import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../domain/upcoming_classes/entities/upcoming_classes.dart';
import '../../presentation/lesson_meeting/lesson_meeting_screen.dart';
import '../../presentation/upcoming_classes/widgets/class_card_widget.dart';
import '../../presentation/upcoming_classes/widgets/upcoming_classes_widget.dart';
import '../../presentation/test.dart';

class AppRouter {
  final _rootNavigatorKey = GlobalKey<NavigatorState>();
  final _shellNavigatorKey = GlobalKey<NavigatorState>();

  late final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: UpcomingClassesWidget.routeName,
    routes: [
      GoRoute(
        name: UpcomingClassesWidget.routeName,
        path: UpcomingClassesWidget.routeName,
        pageBuilder: (_, state) => _buildPageWithTransition(
          const UpcomingClassesWidget(),
          state,
        ),
      ),
      GoRoute(
        name: CallScreen.routeName,
        path: CallScreen.routeName,
        pageBuilder: (_, state) => _buildPageWithTransition(
          const CallScreen(
            channelName: 'channel',
            token:
                '007eJxTYHiZ4vJj3qUf++5t89+4lyvhoMbiG/1u2vy/JstxR2678ydNgcHUMsUiLdXYIsUkxdjEyNQsKcXSzDApLdUyNTnJ1DjF4Ajb0vSGQEYGD+bfDIxQCOKzMyRnJOblpeYwMAAAjj4i9w==',
          ),
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
