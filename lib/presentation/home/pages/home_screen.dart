import 'package:flutter/material.dart';

import '../../classes/pages/classes_screen.dart';
import '../../classes/widgets/classes_widget.dart';
import '../widgets/home_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //   const Classes(),
            // const UpcomingClassesScreen(),
          ],
        ),
      ),
    );
  }
}
