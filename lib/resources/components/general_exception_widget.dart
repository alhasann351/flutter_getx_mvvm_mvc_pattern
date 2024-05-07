import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/components/rounded_button.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/fonts/app_fonts.dart';
import 'package:get/get.dart';

class GeneralExceptionWidget extends StatefulWidget {
  const GeneralExceptionWidget({super.key});

  @override
  State<GeneralExceptionWidget> createState() =>
      _GeneralExceptionWidgetState();
}

class _GeneralExceptionWidgetState extends State<GeneralExceptionWidget> {
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
          'general_exception'.tr,
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
              buttonName: 'Try',
              icon: const Icon(
                Icons.login,
                size: 40,
                color: Colors.white,
              ),
              callback: () {
                print('Press Try Button');
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
