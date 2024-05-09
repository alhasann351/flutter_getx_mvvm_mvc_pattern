import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/components/rounded_button.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/fonts/app_fonts.dart';
import 'package:get/get.dart';

import '../../view_models/controller/home/home_view_model.dart';

class InternetExceptionWidget extends StatefulWidget {
  const InternetExceptionWidget({super.key});

  @override
  State<InternetExceptionWidget> createState() =>
      _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  final homeViewModel = Get.put(HomeViewModel());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(20),
          child: Icon(
            Icons.cloud_off,
            color: Colors.blue,
            size: 80,
          ),
        ),
        Center(
            child: Text(
          'internet_exception'.tr,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            fontFamily: AppFonts.poppinsBold,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        )),
        Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            height: 60,
            width: 200,
            child: RoundedButton(
              buttonName: 'Retry',
              callback: () {
                print('Press Retry Button');
                homeViewModel.refreshUserListApi();
              },
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
