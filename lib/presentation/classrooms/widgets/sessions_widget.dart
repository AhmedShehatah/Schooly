import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/theme/palette.dart';
import '../../../core/utils/dimensions.dart';
import '../../../core/widgets/paged_list/custom_paged_list.dart';
import '../../home/cubit/upcoming_classes_cubit.dart';
import '../../home/widgets/class_card_widget.dart';
import '../../post/pages/add_content_tabs_screen.dart';

class SessionsWidget extends StatefulWidget {
  const SessionsWidget({super.key, required this.classRoomId});
  final String classRoomId;
  @override
  State<SessionsWidget> createState() => _SessionsWidgetState();
}

class _SessionsWidgetState extends State<SessionsWidget> {
  final _cubit = sl<UpcomingClassesCubit>();

  @override
  void initState() {
    super.initState();
    _cubit
      ..reset()
      ..applyFilter(classroomId: widget.classRoomId)
      ..fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: Dimensions.defaultPagePadding,
        child: CustomPagedList(
          controller: _cubit.controller,
          itemBuilder: (item) => ClassCardWidget(
            item: item,
            isLast: false,
          ),
          shimmerItemHeight: 150.h,
          emptyText: '-',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showGeneralDialog(
            context: context,
            barrierDismissible: true,
            barrierLabel:
                MaterialLocalizations.of(context).modalBarrierDismissLabel,
            barrierColor: Colors.black.withOpacity(0.5),
            pageBuilder: (context, anim1, anim2) {
              return AddContentTabsScreen(
                classRoomId: widget.classRoomId,
              );
            },
            transitionBuilder: (context, anim1, anim2, child) {
              return SlideTransition(
                position:
                    Tween(begin: const Offset(0, 1), end: const Offset(0, 0))
                        .animate(anim1),
                child: child,
              );
            },
          );
        },
        backgroundColor: Palette.primary.color7,
        child: const Icon(Icons.add),
      ),
    );
  }
}
