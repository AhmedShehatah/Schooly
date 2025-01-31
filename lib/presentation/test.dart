import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/widgets/buttons/custom_button.dart';
import '../core/widgets/fields/custom_input.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});
  static const String routeName = '/test';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            1.sw.horizontalSpace,
            Text('Loly AA^_^'),
          ],
        ),
      ),
    );
  }
}
