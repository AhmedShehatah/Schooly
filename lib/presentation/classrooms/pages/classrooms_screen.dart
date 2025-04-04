import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/palette.dart';
import '../../../core/widgets/app_bars/custom_app_bar.dart';
import '../../../core/widgets/text/custom_text.dart';

import '../../homework/widgets/homework_widget.dart';
import '../../post/widgets/post_list_widget.dart';

import '../widgets/upcoming_classes_widget.dart';

enum ClassTabs { posts, homeworks, sessions }

class ClassesScreen extends StatefulWidget {
  const ClassesScreen({super.key});
  static const String routeName = '/classrooms';

  @override
  State<ClassesScreen> createState() => _ClassesScreenState();
}

class _ClassesScreenState extends State<ClassesScreen> {
  @override
  void initState() {
    // sl<UpcomingClassesCubit>()
    //   ..reset()
    //   ..fetch();

    super.initState();
  }

  ClassTabs _selectedIndex = ClassTabs.posts;

  Widget _buildTabsScreen() {
    switch (_selectedIndex) {
      case ClassTabs.posts:
        return const PostListWidget();
      case ClassTabs.homeworks:
        return const HomeworkWidget();

      case ClassTabs.sessions:
        return const Placeholder();
    }
  }

  Widget _buildTabChip({required String title, required ClassTabs tab}) {
    return InkWell(
        onTap: () => setState(() => _selectedIndex = tab),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 4.h),
          decoration: BoxDecoration(
            border: Border.all(
              color: _selectedIndex == tab
                  ? Palette.primary.color6
                  : Palette.neutral.color1,
            ),
            color: _selectedIndex == tab
                ? Palette.primary.color6
                : Palette.neutral.color1,
            borderRadius: BorderRadius.circular(100.r),
          ),
          child: CustomText.s10(title),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Schooly',
      ),
      body: Column(
        children: [
          5.verticalSpace,

          ///TODO: implement UpcomingClassesWidget
          SizedBox(height: 105.h, child: const UpcomingClassesWidget()),
          5.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildTabChip(title: "منشورات", tab: ClassTabs.posts),
              _buildTabChip(title: "واجبات", tab: ClassTabs.homeworks),
              _buildTabChip(title: "جلسات", tab: ClassTabs.sessions),
            ],
          ),
          Expanded(child: _buildTabsScreen()),
        ],
      ),
    );
  }
}
