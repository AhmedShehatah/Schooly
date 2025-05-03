import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import '../../theme/palette.dart';

class OTPTextField extends StatelessWidget {
  const OTPTextField({
    super.key,
    required this.controller,
    this.onChanged,
    this.maxLength,
    this.validator,
  });

  final TextEditingController controller;
  final void Function(String)? onChanged;
  final int? maxLength;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Pinput(
        controller: controller,
        pinAnimationType: PinAnimationType.slide,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        defaultPinTheme: PinTheme(
          width: 77.w,
          height: 77.h,
          textStyle: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.bold,
            color: Palette.primary.color6,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(color: Palette.neutral.color6, width: 2.0),
          ),
        ),
        focusedPinTheme: PinTheme(
          width: 77.w,
          height: 77.h,
          textStyle: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.bold,
            color: Palette.primary.color5,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(color: Palette.primary.color6, width: 2.0),
          ),
        ),
        errorPinTheme: PinTheme(
          width: 77.w,
          height: 77.h,
          textStyle: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.bold,
            color: Palette.primary.color5,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(color: Palette.red.shade700, width: 1.0),
          ),
        ),
        validator: validator,
        length: maxLength ?? 4,
      ),
    );
  }
}
