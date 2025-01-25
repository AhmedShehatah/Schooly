import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toastification/toastification.dart';

import '../states/base_state.dart';
import '../widgets/text/custom_text.dart';

extension NumbersExtension on num {
  RoundedRectangleBorder get roundedBorder => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(r),
      );

  BorderRadius get borderRadius => BorderRadius.circular(r);
}

extension StringExtension on String {
  void showToast({required ToastificationType type}) {
    toastification.show(
      title: CustomText.s16(this),
      type: type,
      style: ToastificationStyle.fillColored,
      showProgressBar: false,
      borderSide: BorderSide.none,
      alignment: Alignment.topCenter,
      dismissDirection: DismissDirection.horizontal,
      autoCloseDuration: const Duration(seconds: 3),
      closeButtonShowType: CloseButtonShowType.always,
    );
  }
}

extension IsLoadingState on BaseState {
  bool get isLoading => maybeMap(orElse: () => false, loading: (value) => true);
}
