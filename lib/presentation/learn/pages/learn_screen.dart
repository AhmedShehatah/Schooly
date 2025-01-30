import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../cubit/learn_cubit.dart';

class LearnScreen extends StatefulWidget {
  const LearnScreen({super.key});

  static const routeName = '/learn';

  @override
  State<LearnScreen> createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {
  @override
  void initState() {
    super.initState();

    sl<LearnCubit>()
      ..reset()
      ..fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PagedListView(
        pagingController: sl<LearnCubit>().controller,
        builderDelegate: PagedChildBuilderDelegate(
          itemBuilder: (context, item, index) =>
              CustomText.s15(item.toString()),
        ),
      ),
    );
  }
}
