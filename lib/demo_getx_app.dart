import 'package:demo_getx_flutter/gen/fonts.gen.dart';
import 'package:demo_getx_flutter/presentation/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'package:demo_getx_flutter/presentation/controllers/controllers.dart';

class DemoGetXApp extends GetView<DemoGetXController> {
  const DemoGetXApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: FontFamily.sFProTextRegular),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'),
      ],
      locale: Locale('en', 'US'),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: HomePage.new),
        GetPage(name: '/detail_item', page: DetailPage.new),
      ],
    );
  }
}
