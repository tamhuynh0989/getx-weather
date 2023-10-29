import 'dart:io';

import 'package:demo_getx_flutter/config/flavors.dart';

class ApiConstants {
  static const String acceptHeader = "Accept";

  static const String applicationJson = "application/json";

  static const String authorizationHeader = "Authorization";

  static String getBaseUrl() {
    return F.baseURL;
  }

  static String getPlatform() {
    if (Platform.isAndroid) {
      return "android";
    }
    return "ios";
  }
}
