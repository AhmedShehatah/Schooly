import 'package:flutter/material.dart';

import '../../../core/design/tab_bar/custom_tab_bar.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/widgets/app_bars/custom_app_bar.dart';

import '../../homework/widgets/homework_widget.dart';
import '../../post/widgets/post_list_widget.dart';

class ClassDetailsScreen extends StatefulWidget {
  const ClassDetailsScreen({super.key, required this.classroomId});
  static const String routeName = '/classroom-details-screen';

  final String classroomId;

  @override
  State<ClassDetailsScreen> createState() => _ClassDetailsScreenState();
}

class _ClassDetailsScreenState extends State<ClassDetailsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: lz.schooly,
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            // 5.verticalSpace,
            // SizedBox(height: 120.h, child: const UpcomingClassesWidget()),

            const CustomTabBar(tabs: [
              Tab(text: 'منشورات'),
              Tab(text: 'واجبات'),
              Tab(text: 'جلسات'),
            ]),

            Expanded(
                child: TabBarView(
              children: [
                PostListWidget(
                  classroomId: widget.classroomId,
                ),
                const HomeworkWidget(),
                const Placeholder()
              ],
            )),
          ],
        ),
      ),
    );
  }
}
