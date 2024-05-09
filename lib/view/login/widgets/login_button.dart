import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../resources/colors/app_colors.dart';
import '../../../resources/components/loading_animation.dart';
import '../../../resources/components/rounded_button.dart';
import '../../../view_models/controller/login/login_view_model.dart';

class LoginButton extends StatelessWidget {
  final formKey;
  LoginButton({super.key, required this.formKey});

  final loginViewModel = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Obx(() => loginViewModel.loadingAnimation.value? const LoadingAnimation():RoundedButton(
        buttonName: 'login_button_text'.tr,
        textStyle: const TextStyle(
          color: AppColors.loginButtonTextColor,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        callback: (){
          if(formKey.currentState!.validate()){
            loginViewModel.loginApi();
          }
        },
      )),);
  }
}
