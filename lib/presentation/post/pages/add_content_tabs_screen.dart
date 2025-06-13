import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/cubits/user_cubit.dart';
import '../../../core/enums/enums.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/theme/palette.dart';

import '../../../core/widgets/app_bars/custom_app_bar.dart';
import '../../../domain/auth/entities/user.dart';
import 'tabs/add_post_tab.dart';
import 'tabs/new_session_tab.dart';

class AddContentTabsScreen extends StatefulWidget {
  const AddContentTabsScreen({super.key, required this.classRoomId});
  static const String routeName = '/add-content-tabs-screen';
  final String classRoomId;
  @override
  State<AddContentTabsScreen> createState() => _AddContentTabsScreenState();
}

class _AddContentTabsScreenState extends State<AddContentTabsScreen> {
  int selectedIndex = 0;
  final List<String> tabs = [lz.newPost, lz.newSession, lz.homework];

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.character.primaryInverse,
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: lz.schooly,
      ),
      body: SafeArea(
        child: BlocBuilder<UserCubit, User?>(
          bloc: sl<UserCubit>(),
          builder: (context, user) {
            return Column(
              children: [
                Expanded(
                  child: IndexedStack(
                    index: selectedIndex,
                    children: [
                      AddPostTab(
                        classRoomId: widget.classRoomId,
                      ),
                      if (user?.role == UserType.teacher)
                        NewSessionTab(
                          classroomId: widget.classRoomId,
                        ),
                      const Placeholder(),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  child: Column(
                    children: List.generate(tabs.length, (index) {
                      final bool isSelected = selectedIndex == index;
                      return InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 12.h, horizontal: 16.w),
                          child: Row(
                            children: [
                              Text(
                                tabs[index],
                                style: TextStyle(
                                  color: isSelected
                                      ? Palette.primary.color9
                                      : Palette.character.disabledPlaceholder25,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
