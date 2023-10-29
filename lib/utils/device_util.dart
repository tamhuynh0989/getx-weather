import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:uuid/uuid.dart';

class DeviceUtil {
  static bool get isDesktop => !isWeb && (isWindows || isLinux || isMacOS);

  static bool get isMobile => isAndroid || isIOS;

  static bool get isWeb => kIsWeb;

  static bool get isWindows => !isWeb && Platform.isWindows;

  static bool get isLinux => !isWeb && Platform.isLinux;

  static bool get isMacOS => !isWeb && Platform.isMacOS;

  static bool get isAndroid => !isWeb && Platform.isAndroid;

  static bool get isIOS => !isWeb && Platform.isIOS;

  static String get deviceId => Uuid().v4();
  static Future<PackageInfo> getPackageInfo() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo;
  }
}
