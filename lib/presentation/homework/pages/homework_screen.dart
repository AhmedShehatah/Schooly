import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/homework_card_widget.dart';

class HomeworkScreen extends StatefulWidget {
  const HomeworkScreen({Key? key}) : super(key: key);
  static const String routeName = '/classes';

  @override
  HomeworkScreenState createState() => HomeworkScreenState();
}

class HomeworkScreenState extends State<HomeworkScreen> {
  @override
  Widget build(BuildContext context) {
    return const HomeworkCardWidget();
  }
}
