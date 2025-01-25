import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../assets/fonts.gen.dart';
import '../utils/extensions.dart';
import 'palette.dart';

class AppTheme {
  AppTheme();

  late final theme = ThemeData(
    useMaterial3: true,
    fontFamily: FontFamily.alexandria,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Palette.primary.color6,
      secondary: Palette.primary.color10,
      error: Palette.red.shade900,
      shadow: Colors.white,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsetsDirectional.symmetric(
        vertical: 9.h,
        horizontal: 16.w,
      ),
      hintStyle: TextStyle(
        fontSize: 14.sp,
        color: Colors.black.withAlpha(35),
        fontWeight: FontWeight.w400,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Palette.neutral.color5),
        borderRadius: 11.borderRadius,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Palette.primary.color6),
        borderRadius: 11.borderRadius,
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Palette.red.shade700, width: 2),
        borderRadius: 11.borderRadius,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Palette.red.shade700, width: 3),
        borderRadius: 11.borderRadius,
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Palette.neutral.color2),
        borderRadius: 11.borderRadius,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Palette.neutral.color5),
        borderRadius: 11.borderRadius,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        maximumSize: WidgetStateProperty.all(Size.fromHeight(48.h)),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(
          vertical: 12.h,
          horizontal: 8.w,
        )),
        shape: WidgetStateProperty.all(8.roundedBorder),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        maximumSize: WidgetStateProperty.all(Size.fromHeight(48.h)),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(
          vertical: 12.h,
          horizontal: 8.w,
        )),
        shape: WidgetStateProperty.all(8.roundedBorder),
      ),
    ),
    cardTheme: CardTheme(
      shape: 12.roundedBorder,
      color: Colors.white,
      margin: EdgeInsets.zero,
      elevation: 2,
    ),
    appBarTheme: const AppBarTheme(
      shadowColor: Colors.white,
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(
        fontSize: 11.sp,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 11.sp,
        fontWeight: FontWeight.w600,
        color: Palette.neutral.color5,
      ),
    ),
  );
}
