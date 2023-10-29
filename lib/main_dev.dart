import 'package:demo_getx_flutter/config/flavors.dart';
import 'package:demo_getx_flutter/demo_getx_app.dart';
import 'package:demo_getx_flutter/initialize.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  F.appFlavor = Flavor.DEV;
  await initialize();
  runApp(DemoGetXApp());
}
