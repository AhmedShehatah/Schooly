import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/theme/palette.dart';
import '../../../core/widgets/app_bars/custom_app_bar.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../upcoming_classes/cubit/upcoming_classes_cubit.dart';
import '../../upcoming_classes/pages/upcoming_classes_screen.dart';
import '../widgets/upcoming_classes_widget.dart';

enum ClassTabs { posts, homeworks, sessios }

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

//TODO: implement _onItemTapped
  _buildTabsScreen() {}
  _buildTabChip({required String title, required ClassTabs tab}) {
    return Container(
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
    );
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
          SizedBox(height: 105.h, child: const UpcomingClassesWidget()),
          5.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildTabChip(title: "منشورات", tab: ClassTabs.posts),
              _buildTabChip(title: "واجبات", tab: ClassTabs.homeworks),
              _buildTabChip(title: "جلسات", tab: ClassTabs.sessios),
            ],
          )
        ],
      ),
    );
  }
}
