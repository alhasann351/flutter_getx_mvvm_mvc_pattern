import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/assets/images_icons_assets.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/fonts/app_fonts.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/utils/app_utils.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          'app_bar_text'.tr,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: const Text(
        'Flutter',
        style: TextStyle(
          fontSize: 35,
          fontFamily: AppFonts.poppinsBold,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic
        ),
      ),
    );
  }
}
