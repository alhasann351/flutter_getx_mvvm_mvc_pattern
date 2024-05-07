import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/assets/images_icons_assets.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/colors/app_colors.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/components/general_exception_widget.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/components/internet_exception_widget.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/components/rounded_button.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/fonts/app_fonts.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/utils/app_utils.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/view_models/services/splash_services.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    super.initState();
    splashServices.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashBackgroundColor,
      body: Center(
        child: Text(
          'splash_text'.tr,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 25,
            fontFamily: AppFonts.poppinsBold,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            color: AppColors.splashTextColor,
          ),
        ),
      ),
      /*appBar: AppBar(
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
      ),*/
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
