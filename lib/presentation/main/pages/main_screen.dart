import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/theme/palette.dart';
import '../../upcoming_classes/pages/upcoming_classes_screen.dart';
import '../cubits/bottom_navigation_cubit.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.child});
  final Widget child;
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _localizations = sl<LocaleCubit>().appLocalizations;

  ColorFilter _activeIconColor() => ColorFilter.mode(
        Palette.primary.color8,
        BlendMode.srcIn,
      );

  void _changeTab(int index) {
    switch (index) {
      case 0:
        context.go(UpcomingClassesScreen.routeName);
        break;
      case 1:
        context.go('/notifications');
        break;
      case 2:
        context.go('/schedule');
        break;
      case 3:
        context.go('/classes');
        break;
      case 4:
        context.go('/settings');
        break;
    }
    sl<BottomNavigationCubit>().changePage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BlocBuilder<BottomNavigationCubit, int>(
        bloc: sl<BottomNavigationCubit>(),
        builder: (context, state) {
          return BottomNavigationBar(
            onTap: _changeTab,
            currentIndex: state,
            items: [
              BottomNavigationBarItem(
                icon: Assets.icons.home.svg(),
                activeIcon:
                    Assets.icons.home.svg(colorFilter: _activeIconColor()),
                label: _localizations.home,
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.bell.svg(),
                activeIcon:
                    Assets.icons.bell.svg(colorFilter: _activeIconColor()),
                label: _localizations.notifications,
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.table.svg(),
                activeIcon:
                    Assets.icons.table.svg(colorFilter: _activeIconColor()),
                label: _localizations.schedule,
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.notebook.svg(),
                activeIcon:
                    Assets.icons.notebook.svg(colorFilter: _activeIconColor()),
                label: _localizations.classes,
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.settings.svg(),
                activeIcon:
                    Assets.icons.settings.svg(colorFilter: _activeIconColor()),
                label: _localizations.settings,
              ),
            ],
          );
        },
      ),
    );
  }
}
