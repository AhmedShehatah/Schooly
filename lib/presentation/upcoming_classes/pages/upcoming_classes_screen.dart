import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/theme/palette.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/upcoming_classes/entities/upcoming_classes/upcoming_classes.dart';
import '../../classes/widgets/classes_widget.dart';
import '../../home/widgets/home_app_bar.dart';
import '../cubit/upcoming_classes_cubit.dart';
import '../widgets/class_card_widget.dart';

class UpcomingClassesScreen extends StatefulWidget {
  const UpcomingClassesScreen({Key? key}) : super(key: key);

  static const String routeName = '/upcoming-classes';

  @override
  UpcomingClassesScreenState createState() => UpcomingClassesScreenState();
}

class UpcomingClassesScreenState extends State<UpcomingClassesScreen> {
  final _localizations = sl<LocaleCubit>().appLocalizations;
  @override
  void initState() {
    sl<UpcomingClassesCubit>()
      ..reset()
      ..fetch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// your classes
            Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        CustomText.s14(_localizations.yourClasses,
                            color: Palette.character.title85),
                        const Spacer(),
                        InkWell(
                            onTap: () {},
                            child: CustomText.s11(_localizations.all,
                                color: Palette.primary.color6))
                      ]),
                    ),
                    15.verticalSpace,
                    SizedBox(
                      height: 215.h,
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return const ClassesWidget();
                        },
                        separatorBuilder: (context, index) =>
                            15.horizontalSpace,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            16.verticalSpace,
            // upcoming classes
            Row(
              children: [
                CustomText.s14(
                  _localizations.yourUpcomingClasses,
                  color: Palette.character.title85,
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: CustomText.s11(
                    _localizations.all,
                    color: Palette.primary.color6,
                  ),
                ),
              ],
            ),
            1.verticalSpace,
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async => sl<UpcomingClassesCubit>()
                  ..reset()
                  ..fetch(),
                child: PagedListView<int, UpcomingClasses>(
                  pagingController: sl<UpcomingClassesCubit>().controller,
                  builderDelegate: PagedChildBuilderDelegate<UpcomingClasses>(
                    itemBuilder: (context, item, index) {
                      return ClassCardWidget(
                        item: item,
                        isLast: index ==
                            sl<UpcomingClassesCubit>()
                                    .controller
                                    .itemList!
                                    .length -
                                1,
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
