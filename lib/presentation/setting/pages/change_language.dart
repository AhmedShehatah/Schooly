import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/di/injection_container.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/localization/localization_manager.dart';
import '../../../core/theme/palette.dart';
import '../../../core/widgets/text/custom_text.dart';

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({super.key});

  @override
  State<ChangeLanguage> createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  late bool isArabic;

  @override
  void initState() {
    super.initState();
    final currentLang = sl<LocaleCubit>().state.languageCode;
    isArabic = currentLang == 'ar';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: CustomText.s16(lz.changeLanguage,
              color: Palette.character.primary85, bold: true),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          child: ListView(
            children: [
              ListTile(
                onTap: () {
                  setState(() {
                    isArabic = true;
                  });
                  sl<LocaleCubit>().toArabic();
                },
                leading: SizedBox(
                  width: 34.w,
                  height: 24.h,
                  child: ClipOval(
                    child: Assets.icons.ar.svg(
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                trailing:
                    isArabic ? const Icon(Icons.done_outline_rounded) : null,
                title: const Text('العربية'),
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    isArabic = false;
                  });
                  sl<LocaleCubit>().toEnglish();
                },
                leading: SizedBox(
                  width: 34.w,
                  height: 24.h,
                  child: ClipOval(
                    child: Assets.icons.us.svg(
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                trailing:
                    !isArabic ? const Icon(Icons.done_outline_rounded) : null,
                title: const Text('English'),
              ),
            ],
          ),
        ));
  }
}
