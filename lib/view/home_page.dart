import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/assets/images_icons_assets.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/components/general_exception_widget.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/components/internet_exception_widget.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/components/rounded_button.dart';
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
      body: const GeneralExceptionWidget(),
      /*body: Center(
        child: SizedBox(
          height: 60,
          width: 200,
          child: RoundedButton(
            buttonName: 'Login',
            icon: const Icon(
              Icons.login,
              size: 40,
              color: Colors.white,
            ),
            callback: () {
              print('Press Login Button');
            },
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
      ),*/
    );
  }
}
