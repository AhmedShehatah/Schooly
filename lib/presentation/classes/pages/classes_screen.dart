import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/theme/palette.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../widgets/classes_widget.dart';

class ClassesScreen extends StatefulWidget {
  const ClassesScreen({Key? key}) : super(key: key);

  static const String routeName = '/classes_screen';

  @override
  ClassesScreenState createState() => ClassesScreenState();
}

class ClassesScreenState extends State<ClassesScreen> {
  final _localizations = sl<LocaleCubit>().appLocalizations;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  CustomText.s14(_localizations.yourClasses,
                      color: Palette.character.title85),
                  const Spacer(),
                  InkWell(
                      onTap: () {},
                      child: CustomText.s11(_localizations.all,
                          color: Palette.primary.color6))
                ]),
                15.verticalSpace,
                SizedBox(
                  height: 215.h,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return const ClassesWidget();
                    },
                    separatorBuilder: (context, index) => 15.horizontalSpace,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
