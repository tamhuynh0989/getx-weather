import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class ScreenUtil {
  static MediaQueryData get mediaQuery => MediaQueryData.fromWindow(ui.window);

  static double get getStatusBarHeight => mediaQuery.padding.top;

  static double get getBottomNavigationBarHeight => mediaQuery.padding.bottom;

  static Orientation get getOrientation => mediaQuery.orientation;

  static bool get getAccessibleNavigation => mediaQuery.accessibleNavigation;

  static bool get getBoldText => mediaQuery.boldText;

  static double get getDevicePixelRatio => mediaQuery.devicePixelRatio;

  static bool get getDisableAnimations => mediaQuery.disableAnimations;

  static int get getHashCode => mediaQuery.hashCode;

  static bool get getInvertColors => mediaQuery.invertColors;

  static EdgeInsets get getPadding => mediaQuery.padding;

  static Brightness get getPlatformBrightness => mediaQuery.platformBrightness;

  static Size get getDeviceSize => mediaQuery.size;

  static double get getTextScaleFactor => mediaQuery.textScaleFactor;

  static EdgeInsets get getViewInsets => mediaQuery.viewInsets;

  static EdgeInsets get getViewPadding => mediaQuery.viewPadding;

  static double get getWidthPixel =>
      mediaQuery.size.width * getDevicePixelRatio;

  static double get getHeightPixel =>
      mediaQuery.size.height * getDevicePixelRatio;

  static double get deviceWidth => mediaQuery.size.width;

  static double get deviceHeight => mediaQuery.size.height;
}
