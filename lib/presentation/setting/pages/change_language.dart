import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/di/injection_container.dart';
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
        child: Column(
          children: [
            _buildLangOption(
              flag: Assets.icons.ar.svg(fit: BoxFit.cover),
              name: 'العربية',
              sub: 'Arabic',
              isSelected: isArabic,
              onTap: () {
                setState(() => isArabic = true);
                sl<LocaleCubit>().toArabic();
              },
            ),
            16.verticalSpace,
            _buildLangOption(
              flag: Assets.icons.us.svg(fit: BoxFit.cover),
              name: 'English',
              sub: 'English',
              isSelected: !isArabic,
              onTap: () {
                setState(() => isArabic = false);
                sl<LocaleCubit>().toEnglish();
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLangOption({
    required Widget flag,
    required String name,
    required String sub,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        padding: EdgeInsets.all(12.r),
        decoration: BoxDecoration(
          color: isSelected
              ? Palette.primary.color1.withOpacity(0.1)
              : Palette.neutral.color2,
          border: Border.all(
            color: isSelected ? Palette.primary.color3 : Palette.neutral.color5,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6.r),
              child: SizedBox(width: 34.w, height: 24.h, child: flag),
            ),
            16.horizontalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: TextStyle(
                        fontSize: 14.sp, fontWeight: FontWeight.w600)),
                Text(sub,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Palette.character.secondary45,
                    )),
              ],
            ),
            const Spacer(),
            if (isSelected) Icon(Icons.done, color: Palette.primary.color3),
          ],
        ),
      ),
    );
  }
}
