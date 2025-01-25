import 'dart:io';

import 'package:flutter/material.dart';
import 'package:upgrader/upgrader.dart';

class UpgraderManager extends StatelessWidget {
  const UpgraderManager({super.key, required this.child});
  static int _builds = 0;

  final Widget child;
  @override
  Widget build(BuildContext context) {
    _builds++;

    if (_builds > 1) {
      return child;
    }
    return UpgradeAlert(
      dialogStyle: Platform.isAndroid
          ? UpgradeDialogStyle.material
          : UpgradeDialogStyle.cupertino,
      showIgnore: false,
      showLater: false,
      upgrader: Upgrader(
        languageCode: 'ar',
        debugDisplayAlways: false,
        debugLogging: true,
        minAppVersion: '2.0.0',
        storeController: UpgraderStoreController(
          onAndroid: () => UpgraderPlayStore(),
          oniOS: () => UpgraderAppStore(),
        ),
      ),
      child: child,
    );
  }
}
