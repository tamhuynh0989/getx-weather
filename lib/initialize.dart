import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:demo_getx_flutter/utils/shared_preferences_util.dart';

Future<void> initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesUtil.getInstance();
  Intl.defaultLocale = 'ja';
}
