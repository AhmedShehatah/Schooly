import 'package:flutter/material.dart';

import '../text/custom_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.child,
    this.actions = const [],
    this.center = false,
    this.showBackButton = false,
    this.onBack,
    this.height = kToolbarHeight,
  }) : assert(!(title != null && child != null));
  final String? title;
  final Widget? child;
  final List<Widget> actions;
  final bool center;
  final double height;
  final bool showBackButton;
  final void Function()? onBack;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: actions,
      centerTitle: center,
      title: Builder(builder: (context) {
        if (title != null) return CustomText.s16(title!);
        if (child != null) return child!;
        return const Material();
      }),
      leading: showBackButton
          ? IconButton(
              onPressed: onBack,
              icon: const Icon(Icons.arrow_back_ios),
            )
          : null,
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, height);
}
