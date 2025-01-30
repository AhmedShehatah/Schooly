import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/theme/palette.dart';
import '../core/widgets/buttons/custom_button.dart';
import '../core/widgets/fields/custom_input.dart';
import 'widgets/room_details_sheet.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});
  static const String routeName = '/test';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RoomDetailsSheet(),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     RoomDetailsSheet(),
        //     1.sw.horizontalSpace,
        //     CustomInput(
        //       title: 'Email',
        //       hint: 'Enter your email',
        //       required: false,
        //     ),
        //     CustomButton(
        //       text: 'heelo world',
        //       onPressed: () {},
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
