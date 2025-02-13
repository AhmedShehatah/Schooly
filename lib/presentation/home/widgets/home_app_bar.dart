import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/theme/palette.dart';
import '../../../core/widgets/text/custom_text.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});
  static const String routeName = '/home-app-bar';

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _HomeAppBarState extends State<HomeAppBar> {
  final _localizations = sl<LocaleCubit>().appLocalizations;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(999.r),
          child: Container(
            color: Palette.green.shade400,
            child: Assets.images.profile.image(
              width: 48.sp,
              height: 48.sp,
            ),
          ),
        ),
        title: CustomText.s11(
          _localizations.hello,
          color: Palette.character.secondary45,
        ),
        subtitle: CustomText.s14(
          'أ. ليلى أحمد',
          color: Palette.character.primary85,
        ),
        trailing: InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10.r),
              color: Palette.neutral.color1,
              border: Border.all(color: Palette.neutral.color5),
              boxShadow: [
                BoxShadow(
                  color: Palette.neutral.color5,
                  blurRadius: 2,
                )
              ],
            ),
            child: Icon(
              Icons.notifications_none_outlined,
              size: 22.sp,
            ),
          ),
        ),
      ),
    );
  }
}
