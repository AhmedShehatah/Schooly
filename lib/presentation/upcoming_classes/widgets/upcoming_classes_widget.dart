import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/theme/palette.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/upcoming_classes/entities/upcoming_classes.dart';
import '../cubit/upcoming_classes_cubit.dart';
import 'class_card_widget.dart';

class UpcomingClassesWidget extends StatefulWidget {
  const UpcomingClassesWidget({Key? key}) : super(key: key);

  static const String routeName = '/upcoming-classes';

  @override
  UpcomingClassesWidgetState createState() => UpcomingClassesWidgetState();
}

class UpcomingClassesWidgetState extends State<UpcomingClassesWidget> {
  @override
  void initState() {
    sl<UpcomingClassesCubit>()
      ..reset()
      ..fetch();
    super.initState();
  }

  @override
  void dispose() {
    sl<UpcomingClassesCubit>().controller.dispose();
    super.dispose();
  }

  bool showAll = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Schooly'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomText.s24(
                  'حصصك القادمة',
                  color: Palette.character.title85,
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      showAll = true;
                    });
                  },
                  child: CustomText.s24(
                    'الكل',
                    color: Palette.primary.color6,
                  ),
                ),
              ],
            ),
            1.verticalSpace,
            Expanded(
              child: PagedListView<int, UpcomingClasses>(
                pagingController: sl<UpcomingClassesCubit>().controller,
                builderDelegate: PagedChildBuilderDelegate<UpcomingClasses>(
                  itemBuilder: (context, item, index) {
                    return ClassCardWidget(
                      item: item,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
