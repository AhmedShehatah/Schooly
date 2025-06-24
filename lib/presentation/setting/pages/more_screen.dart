import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/cubits/media_download_cubit.dart';
import '../../../core/cubits/user_cubit.dart';
import '../../../core/enums/enums.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/shared_preferences/prefs_keys.dart';
import '../../../core/shared_preferences/shared_prefs.dart';
import '../../../core/states/base_state.dart';
import '../../../core/theme/palette.dart';
import '../../../core/widgets/app_bars/custom_app_bar.dart';
import '../../../core/widgets/images/custom_image.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../../domain/auth/entities/user.dart';
import '../../auth/login/pages/login_screen.dart';
import '../../profile/pages/profile_screen.dart';
import 'change_language.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});
  static const String routeName = '/more-screen';

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: lz.more,
      ),
      body: BlocBuilder<UserCubit, User?>(
        bloc: sl<UserCubit>(),
        builder: (context, user) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildProfileHeader(
                    user?.role == UserType.student
                        ? '${user?.name}'
                        : '${lz.titlePrefix}${user?.name}',
                  ),
                  16.verticalSpace,
                  _buildMenuList(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildProfileHeader(String name) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Row(
          children: [
            BlocBuilder<DownloadAttachmentCubit, BaseState<Uint8List>>(
              bloc: sl<DownloadAttachmentCubit>(),
              builder: (context, downloadState) {
                return downloadState.maybeWhen(
                  success: (data) => CustomImage.circular(
                    radius: 48.r,
                    memoryImageBytes: data,
                  ),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  orElse: () => CustomImage.circular(
                    radius: 48.r,
                    image: Assets.images.profile.path,
                  ),
                );
              },
            ),
            16.horizontalSpace,
            CustomText.s18(
              name,
              color: Palette.character.primary85,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuList() {
    final menuItems = [
      {
        'icon': Icons.person_outline,
        'title': lz.profile,
        'color': Palette.primary.color2,
      },
      {
        'icon': Icons.language,
        'title': lz.changeLanguage,
        'color': Palette.darkBlue.shade200
      },
      {
        'icon': Icons.logout,
        'title': lz.logout,
        'color': Palette.dustRed.color2
      },
    ];

    return Column(
      children: menuItems.mapIndexed((index, item) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          margin: EdgeInsets.only(bottom: 8.h),
          child: ListTile(
            leading: Container(
              padding: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                color: item['color'] as Color?,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Icon(
                item['icon'] as IconData,
                size: 20.sp,
              ),
            ),
            title: Text(
              item['title'] as String,
              style: TextStyle(
                fontSize: 16.sp,
                color: Palette.character.primary85,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16.sp,
              color: Palette.neutral.color7,
            ),
            onTap: () {
              onTap(index);
            },
          ),
        );
      }).toList(),
    );
  }

  void onTap(int index) {
    switch (index) {
      case 0:
        showGeneralDialog(
          context: context,
          barrierDismissible: true,
          barrierLabel:
              MaterialLocalizations.of(context).modalBarrierDismissLabel,
          barrierColor: Colors.black.withOpacity(0.5),
          pageBuilder: (context, anim1, anim2) {
            return const ProfileScreen();
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
        break;
      case 1:
        showGeneralDialog(
          context: context,
          barrierDismissible: true,
          barrierLabel:
              MaterialLocalizations.of(context).modalBarrierDismissLabel,
          barrierColor: Colors.black.withOpacity(0.5),
          pageBuilder: (context, anim1, anim2) {
            return const ChangeLanguage();
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
        break;
      case 2:
        sl<SharedPrefs>().deleteSecuredValue(key: PrefsKeys.token);
        context.goNamed(LoginScreen.routeName);
        break;
    }
  }
}
