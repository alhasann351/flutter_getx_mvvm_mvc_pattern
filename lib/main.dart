import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/localization/languages.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/routes/app_routes.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/view/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      getPages: AppRoutes.appRoutes(),
    ); // GetMaterialApp
  }
}
