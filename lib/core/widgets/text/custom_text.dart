import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  CustomText.s33(
    this.text, {
    super.key,
    this.bold = false,
    this.center = false,
    this.overflow = false,
    this.underline = false,
    this.maxLines,
    this.color,
  }) : _fontSize = 33.sp;
  CustomText.s30(
    this.text, {
    super.key,
    this.bold = false,
    this.center = false,
    this.overflow = false,
    this.underline = false,
    this.maxLines,
    this.color,
  }) : _fontSize = 30.sp;
  CustomText.s27(
    this.text, {
    super.key,
    this.bold = false,
    this.center = false,
    this.overflow = false,
    this.underline = false,
    this.maxLines,
    this.color,
  }) : _fontSize = 27.sp;
  CustomText.s24(
    this.text, {
    super.key,
    this.bold = false,
    this.center = false,
    this.overflow = false,
    this.underline = false,
    this.maxLines,
    this.color,
  }) : _fontSize = 24.sp;
  CustomText.s23(
    this.text, {
    super.key,
    this.bold = false,
    this.center = false,
    this.overflow = false,
    this.underline = false,
    this.maxLines,
    this.color,
  }) : _fontSize = 23.sp;
  CustomText.s22(
    this.text, {
    super.key,
    this.bold = false,
    this.center = false,
    this.overflow = false,
    this.underline = false,
    this.maxLines,
    this.color,
  }) : _fontSize = 22.sp;
  CustomText.s20(
    this.text, {
    super.key,
    this.bold = false,
    this.center = false,
    this.overflow = false,
    this.underline = false,
    this.maxLines,
    this.color,
  }) : _fontSize = 20.sp;
  CustomText.s18(
    this.text, {
    super.key,
    this.bold = false,
    this.center = false,
    this.overflow = false,
    this.underline = false,
    this.maxLines,
    this.color,
  }) : _fontSize = 18.sp;
  CustomText.s17(
    this.text, {
    super.key,
    this.bold = false,
    this.center = false,
    this.overflow = false,
    this.underline = false,
    this.maxLines,
    this.color,
  }) : _fontSize = 17.sp;
  CustomText.s16(
    this.text, {
    super.key,
    this.bold = false,
    this.center = false,
    this.overflow = false,
    this.underline = false,
    this.maxLines,
    this.color,
  }) : _fontSize = 16.sp;
  CustomText.s15(
    this.text, {
    super.key,
    this.bold = false,
    this.center = false,
    this.overflow = false,
    this.underline = false,
    this.maxLines,
    this.color,
  }) : _fontSize = 15.sp;
  CustomText.s14(
    this.text, {
    super.key,
    this.bold = false,
    this.center = false,
    this.overflow = false,
    this.underline = false,
    this.maxLines,
    this.color,
  }) : _fontSize = 14.sp;
  CustomText.s13(
    this.text, {
    super.key,
    this.bold = false,
    this.center = false,
    this.overflow = false,
    this.underline = false,
    this.maxLines,
    this.color,
  }) : _fontSize = 13.sp;
  CustomText.s12(
    this.text, {
    super.key,
    this.bold = false,
    this.center = false,
    this.overflow = false,
    this.underline = false,
    this.maxLines,
    this.color,
  }) : _fontSize = 12.sp;
  CustomText.s11(
    this.text, {
    super.key,
    this.bold = false,
    this.center = false,
    this.overflow = false,
    this.underline = false,
    this.maxLines,
    this.color,
  }) : _fontSize = 11.sp;
  CustomText.s10(
    this.text, {
    super.key,
    this.bold = false,
    this.center = false,
    this.overflow = false,
    this.underline = false,
    this.maxLines,
    this.color,
  }) : _fontSize = 10.sp;
  CustomText.s9(
    this.text, {
    super.key,
    this.bold = false,
    this.center = false,
    this.overflow = false,
    this.underline = false,
    this.maxLines,
    this.color,
  }) : _fontSize = 9.sp;
  CustomText.s8(
    this.text, {
    super.key,
    this.bold = false,
    this.center = false,
    this.overflow = false,
    this.underline = false,
    this.maxLines,
    this.color,
  }) : _fontSize = 8.sp;
  CustomText.s7(
    this.text, {
    super.key,
    this.bold = false,
    this.center = false,
    this.overflow = false,
    this.underline = false,
    this.maxLines,
    this.color,
  }) : _fontSize = 7.sp;

  final String? text;
  final double _fontSize;
  final bool bold;
  final bool center;
  final bool overflow;
  final bool underline;
  final int? maxLines;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? 'N/A',
      overflow: overflow ? TextOverflow.ellipsis : null,
      textAlign: center ? TextAlign.center : null,
      maxLines: maxLines,
      style: TextStyle(
        color: color,
        fontSize: _fontSize,
        fontWeight: bold ? FontWeight.bold : null,
        decoration: underline ? TextDecoration.underline : null,
      ),
    );
  }
}
