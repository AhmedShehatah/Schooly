import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/palette.dart';
import '../../utils/extensions.dart';
import '../text/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isExpanded = true,
    this.isLoading = false,
    this.icon,
    this.underlineText = false,
    this.backgroundColor,
    this.isTextBold = false,
    this.borderRadius,
    this.enabled = true,
    this.textColor,
    this.isRed = false,
    this.iconAlignment = IconAlignment.end,
  })  : isOutlined = false,
        isText = false;
  const CustomButton.outlined({
    super.key,
    required this.text,
    required this.onPressed,
    this.isExpanded = true,
    this.isLoading = false,
    this.icon,
    this.underlineText = false,
    this.borderRadius,
    this.enabled = true,
    this.backgroundColor,
    this.isTextBold = false,
    this.isRed = false,
    this.textColor,
    this.iconAlignment = IconAlignment.end,
  })  : isOutlined = true,
        isText = false;

  const CustomButton.text({
    super.key,
    required this.text,
    required this.onPressed,
    this.isExpanded = true,
    this.isLoading = false,
    this.icon,
    this.enabled = true,
    this.isRed = false,
    this.underlineText = false,
    this.borderRadius,
    this.textColor,
    this.backgroundColor,
    this.isTextBold = false,
    this.iconAlignment = IconAlignment.end,
  })  : isOutlined = false,
        isText = true;
  final bool isExpanded;
  final bool isLoading;
  final VoidCallback onPressed;
  final String text;
  final IconAlignment iconAlignment;
  final Widget? icon;
  final bool isOutlined;
  final bool enabled;
  final double? borderRadius;
  final bool isRed;
  final bool isText;
  final Color? textColor;
  final bool underlineText;
  final Color? backgroundColor;
  final bool isTextBold;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isExpanded ? double.infinity : null,
      child: IgnorePointer(
        ignoring: isLoading || !enabled,
        child: Builder(builder: (context) {
          if (isOutlined) return _buildOutlinedButton();
          if (isText) return _buildTextButton();
          return _buildElevatedButton();
        }),
      ),
    );
  }

  Color get _textColor {
    if (textColor != null) return textColor!;

    if (isOutlined) {
      if (isRed) return Palette.red.shade700;
      return Palette.primary.color6;
    }
    return Colors.white;
  }

  Color get _buttonColor {
    if (backgroundColor != null) return backgroundColor!;
    if (isRed) return Palette.red.shade700;
    return Palette.primary.color6;
  }

  Widget _buildContent() {
    if (isLoading) {
      return SizedBox(
        width: 24.w,
        height: 24.h,
        child: Center(
          child: CircularProgressIndicator(
            color: _textColor,
            strokeWidth: 2.w,
          ),
        ),
      );
    }
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: CustomText.s16(
        text,
        color: _textColor,
        bold: isTextBold,
        underline: underlineText,
      ),
    );
  }

  Widget _buildElevatedButton() {
    return ElevatedButton.icon(
      onPressed: enabled ? onPressed : null,
      label: _buildContent(),
      icon: icon,
      iconAlignment: iconAlignment,
      style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith(
            (states) {
              if (!states.contains(WidgetState.disabled)) {
                return _buttonColor;
              }
              return null;
            },
          ),
          shape: borderRadius == null
              ? null
              : WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: borderRadius!.borderRadius,
                  ),
                )),
    );
  }

  Widget _buildOutlinedButton() {
    return OutlinedButton.icon(
      onPressed: enabled ? onPressed : null,
      label: _buildContent(),
      icon: icon,
      style: ButtonStyle(
        side: WidgetStateProperty.all(
          BorderSide(
            color: _buttonColor,
          ),
        ),
      ),
      iconAlignment: iconAlignment,
    );
  }

  Widget _buildTextButton() {
    return TextButton.icon(
      onPressed: enabled ? onPressed : null,
      label: _buildContent(),
      icon: icon,
      iconAlignment: iconAlignment,
    );
  }
}
