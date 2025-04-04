import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'homework_card_widget.dart';

class HomeworkWidget extends StatefulWidget {
  const HomeworkWidget({Key? key}) : super(key: key);

  @override
  HomeworkWidgetState createState() => HomeworkWidgetState();
}

class HomeworkWidgetState extends State<HomeworkWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
        vertical: 8.h,
      ),
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return const HomeworkCardWidget();
        },
      ),
    );
  }
}
