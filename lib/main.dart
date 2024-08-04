import 'package:counter_app_using_getx_and_localization/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'localization/ar_eg.dart';
import 'localization/en_us.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //this is my change from user 1
    //this is my change from user 1 in main
    //this is my change from user 1 in main

    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: MyTranslation(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      initialRoute: AppPages.HOME,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'en_US': enUS, 'ar_EG': arEg};
}
