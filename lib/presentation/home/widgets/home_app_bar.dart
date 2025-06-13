import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/cubits/user_cubit.dart';
import '../../../core/enums/enums.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/theme/palette.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/auth/entities/user.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});
  static const String routeName = '/home-app-bar';

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, User?>(
      bloc: sl<UserCubit>(),
      builder: (context, user) {
        return Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              radius: 24.r,
              backgroundColor: Palette.green.shade400,
              backgroundImage: AssetImage(Assets.images.profile.path),
            ),
            title: CustomText.s11(
              lz.hello,
              color: Palette.character.secondary45,
            ),
            subtitle: CustomText.s14(
              user?.role == UserType.student
                  ? 'مرحبا ${user?.name}'
                  : 'مرحبا أ. ${user?.name}',
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
                      blurRadius: 2.r,
                    )
                  ],
                ),
                child: Assets.icons.bell.svg(),
              ),
            ),
          ),
        );
      },
    );
  }
}
