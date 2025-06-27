import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/states/base_state.dart';
import '../../../core/widgets/app_bars/custom_app_bar.dart';
import '../../core/theme/palette.dart';
import '../../core/widgets/text/custom_text.dart';
import '../../domain/upcoming_classes/entities/upcoming_classes/upcoming_classes.dart';
import '../home/cubit/upcoming_classes_cubit.dart';
import '../home/widgets/class_card_widget.dart';

class UpcomingScreen extends StatefulWidget {
  const UpcomingScreen({super.key});
  static const String routeName = '/upcoming-screen';

  @override
  State<UpcomingScreen> createState() => _UpcomingScreenState();
}

class _UpcomingScreenState extends State<UpcomingScreen> {
  @override
  void initState() {
    super.initState();
    sl<UpcomingClassesCubit>().getUpcomingClassesPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: lz.yourUpcomingClasses,
      ),
      body: BlocBuilder<UpcomingClassesCubit, BaseState<List<UpcomingClasses>>>(
        bloc: sl<UpcomingClassesCubit>(),
        builder: (context, state) => state.maybeMap(
            orElse: () => const SizedBox.shrink(),
            loading: (_) => const Center(child: CircularProgressIndicator()),
            success: (state) => ListView.builder(
                  itemCount: state.data.length,
                  itemBuilder: (context, index) {
                    if (state.data.isEmpty) {
                      return Center(
                        child: CustomText.s17(
                          lz.noUpcomingClasses,
                          color: Palette.character.title85,
                        ),
                      );
                    }
                    return ClassCardWidget(
                      item: state.data[index],
                      isLast: index == state.data.length - 1,
                    );
                  },
                )),
      ),
    );
  }
}
