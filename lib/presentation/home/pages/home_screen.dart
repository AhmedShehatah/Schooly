import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/states/base_state.dart';
import '../../../core/theme/palette.dart';
import '../../../core/widgets/shimmer/shimmer_list.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/upcoming_classes/entities/upcoming_classes/upcoming_classes.dart';
import '../../classes/widgets/classes_widget.dart';
import '../widgets/home_app_bar.dart';
import '../cubit/upcoming_classes_cubit.dart';
import '../widgets/class_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = '/home-screen';

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    sl<UpcomingClassesCubit>().getUpcomingClassesPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const HomeAppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
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
                          CustomText.s14(lz.yourClasses,
                              color: Palette.character.title85),
                          const Spacer(),
                          InkWell(
                              onTap: () {},
                              child: CustomText.s11(lz.all,
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
                    lz.yourUpcomingClasses,
                    color: Palette.character.title85,
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: CustomText.s11(
                      lz.all,
                      color: Palette.primary.color6,
                    ),
                  ),
                ],
              ),
              1.verticalSpace,
              Expanded(
                child: RefreshIndicator(
                    onRefresh: () async =>
                        sl<UpcomingClassesCubit>().getUpcomingClassesPage(),
                    child: BlocBuilder<UpcomingClassesCubit,
                        BaseState<List<UpcomingClasses>>>(
                      bloc: sl<UpcomingClassesCubit>(),
                      builder: (context, state) {
                        return state.maybeWhen(
                            orElse: () => Container(),
                            loading: () => ShimmerList(
                                rowCount: 4,
                                itemWidth: 1.sw,
                                itemHeight: 100.h),
                            success: (classes) {
                              return ListView.builder(
                                itemCount: classes.length,
                                itemBuilder: (context, index) {
                                  if (classes.isEmpty) {
                                    return Center(
                                      child: CustomText.s17(
                                          'There is no Upcoming Classes yet'),
                                    );
                                  }
                                  return ClassCardWidget(
                                    item: classes[index],
                                    isLast: index == classes.length - 1,
                                  );
                                },
                              );
                            },
                            failure: (error) {
                              return Center(
                                child: CustomText.s17(error.message),
                              );
                            });
                      },
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
