import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/di/injection_container.dart';
import '../../localization/localization_manager.dart';
import '../../theme/palette.dart';
import '../../utils/validators.dart';
import '../text/custom_text.dart';

class CustomInput extends StatefulWidget {
  const CustomInput({
    super.key,
    required this.title,
    this.hint,
    this.suffix,
    this.prefix,
    this.onChanged,
    this.validator,
    this.controller,
    this.keyboardType,
    this.debounce = false,
    this.textInputAction = TextInputAction.next,
    this.required = true,
    this.showAsterisk = true,
  }) : _obscureNotifier = null;

  CustomInput.obscure({
    super.key,
    required this.controller,
    this.textInputAction = TextInputAction.next,
    this.required = false,
    this.showAsterisk = true,
  })  : title = sl<LocaleCubit>().appLocalizations.password,
        hint = null,
        prefix = null,
        onChanged = null,
        validator = sl<Validators>().password,
        keyboardType = TextInputType.visiblePassword,
        debounce = false,
        suffix = null,
        _obscureNotifier = ValueNotifier(true),
        assert(controller != null);

  final String title;
  final String? hint;
  final Widget? suffix;
  final Widget? prefix;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String value)? onChanged;
  final bool debounce;
  final bool required;
  final TextInputAction textInputAction;
  final bool showAsterisk;
  final ValueNotifier<bool>? _obscureNotifier;

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  void _changeObscure() {
    widget._obscureNotifier!.value = !widget._obscureNotifier!.value;
  }

  Widget? get _suffix {
    if (widget.suffix == null) return null;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        SizedBox(
          height: 24.h,
          child: VerticalDivider(color: Palette.neutral.color7),
        ),
        widget.suffix!,
      ]),
    );
  }

  Function(String value)? get _onChanged {
    if (widget.onChanged == null) return null;

    return widget.onChanged;
  }

  String? Function(String?)? get _validator {
    if (widget.validator != null) return widget.validator;
    if (widget.required) {
      return (value) => sl<Validators>().required(value, title: widget.title);
    }
    return null;
  }

  @override
  void dispose() {
    widget._obscureNotifier?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText.s14(
                  widget.title,
                  color: Colors.black,
                ),
                if (widget.required && widget.showAsterisk)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      4.horizontalSpace,
                      CustomText.s14(
                        '*',
                        color: Palette.red.shade800,
                        bold: true,
                      ),
                    ],
                  ),
              ],
            ),
          ],
        ),
        8.verticalSpace,
        Builder(builder: (context) {
          if (widget._obscureNotifier != null) {
            return ValueListenableBuilder(
              valueListenable: widget._obscureNotifier!,
              builder: (context, value, child) => TextFormField(
                obscureText: value,
                validator: widget.validator,
                controller: widget.controller,
                textInputAction: widget.textInputAction,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onTapOutside: (_) => FocusScope.of(context).unfocus(),
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: _changeObscure,
                    icon: Builder(builder: (context) {
                      IconData icon = Icons.visibility_outlined;
                      if (!value) icon = Icons.visibility_off_outlined;
                      return Icon(icon);
                    }),
                  ),
                ),
              ),
            );
          }
          return TextFormField(
            validator: _validator,
            onChanged: _onChanged,
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            textInputAction: widget.textInputAction,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onTapOutside: (_) => FocusScope.of(context).unfocus(),
            decoration: InputDecoration(
              hintText: widget.hint,
              prefixIcon: widget.prefix,
              suffixIcon: _suffix,
            ),
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          );
        }),
      ],
    );
  }
}
