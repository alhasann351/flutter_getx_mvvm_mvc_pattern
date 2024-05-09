import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../resources/colors/app_colors.dart';
import '../../../utils/app_utils.dart';
import '../../../view_models/controller/login/login_view_model.dart';

class InputPassword extends StatelessWidget {
  InputPassword({super.key});

  final loginViewModel = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginViewModel.passwordController.value,
      focusNode: loginViewModel.passwordFocusNode.value,
      obscureText: true,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        //hintText: 'email_hint'.tr,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.emailTextFormFieldColor,
            width: 2,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.emailTextFormFieldColor,
            width: 2,
          ),
        ),
        labelText: 'password_hint'.tr,
        labelStyle: const TextStyle(
          fontSize: 18,
        ),
      ),
      validator: (value){
        if(value!.isEmpty){
          return AppUtils.showToastMessage('password_validated_text'.tr);
        }
        return null;
      },
      /*onFieldSubmitted: (value){
              //AppUtils.fieldFocusChange(context, loginViewModel.emailFocusNode.value, loginViewModel.passwordFocusNode.value);
            },*/
    );
  }
}
