import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';
import '../../../app/di/injection_container.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/states/base_state.dart';
import '../../../core/theme/palette.dart';
import '../../../core/utils/extensions.dart';
import '../../../core/widgets/buttons/custom_button.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/upcoming_classes/entities/sessions/session.dart';
import '../../../domain/upcoming_classes/entities/upcoming_classes/upcoming_classes.dart';
import '../../lesson_meeting/cubits/join_meeting_cubit.dart';
import '../../lesson_meeting/pages/lesson_meeting_screen.dart';
import 'class_card_widget.dart';

class RoomDetailsSheet extends StatelessWidget {
  final UpcomingClasses item;

  RoomDetailsSheet({super.key, required this.item});
  final _localizations = sl<LocaleCubit>().appLocalizations;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          8.verticalSpace,
          ClassCardWidget(
            item: item,
            isLast: false,
          ),
          26.verticalSpace,
          Row(
            children: [
              _buildTextIcon(
                  title: _localizations.teacher,
                  icon: Assets.images.science.image(width: 25, height: 25),
                  content: item.teacherId),
              50.horizontalSpace,
              _buildTextIcon(
                  title: _localizations.lessonType,
                  icon: Assets.images.science.image(width: 25, height: 25),
                  content: '${item.lessonType}')
            ],
          ),
          24.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildTextIcon(
                  title: _localizations.date,
                  icon: Assets.images.science.image(width: 25, height: 25),
                  content: item.date),
              _buildTextIcon(
                  title: _localizations.from,
                  icon: Assets.images.science.image(width: 25, height: 25),
                  content: item.from),
              _buildTextIcon(
                  title: _localizations.to,
                  icon: Assets.images.science.image(width: 25, height: 25),
                  content: item.to),
            ],
          ),
          15.verticalSpace,
          BlocConsumer<JoinMeetingCubit, BaseState<Session>>(
            bloc: sl<JoinMeetingCubit>(),
            listener: (context, state) {
              state.mapOrNull(
                success: (data) {
                  context.pushNamed(CallScreen.routeName, extra: {
                    'channel': item.title,
                    'token': data.data.token,
                  });
                },
                failure: (failure) {
                  failure.failure.message
                      .showToast(type: ToastificationType.error);
                },
              );
            },
            builder: (context, state) {
              return CustomButton(
                isLoading: state.isLoading,
                isTextBold: true,
                text: 'انضم الان',
                onPressed: () {
                  sl<JoinMeetingCubit>().joinSession(item.id);
                },
                backgroundColor: Palette.neutral.color3,
                textColor: Palette.character.disabledPlaceholder25,
              );
            },
          ),
          15.verticalSpace,
          CustomButton.text(
            isExpanded: false,
            onPressed: () {},
            text: 'فعل الاشعارات',
            textColor: Palette.primary.color6,
          ),
          36.verticalSpace,
        ],
      ),
    );
  }

  Widget _buildTextIcon(
      {required String title, required String content, required Widget icon}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText.s11(
          title,
          color: Palette.character.primary85,
        ),
        0.01.sh.verticalSpace,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            0.01.sw.horizontalSpace,
            CustomText.s14(
              content,
              bold: true,
              color: Palette.character.title85,
            )
          ],
        ),
      ],
    );
  }
}
