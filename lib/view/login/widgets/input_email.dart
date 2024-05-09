import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../resources/colors/app_colors.dart';
import '../../../utils/app_utils.dart';
import '../../../view_models/controller/login/login_view_model.dart';

class InputEmail extends StatelessWidget {
  InputEmail({super.key});

  final loginViewModel = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginViewModel.emailController.value,
      focusNode: loginViewModel.emailFocusNode.value,
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
        labelText: 'email_hint'.tr,
        labelStyle: const TextStyle(
          fontSize: 18,
        ),
      ),
      validator: (value){
        if(value!.isEmpty){
          return AppUtils.showToastMessage('email_validated_text'.tr);
        }
        return null;
      },
      /*onFieldSubmitted: (value){
              return AppUtils.fieldFocusChange(context, loginViewModel.emailFocusNode.value, loginViewModel.passwordFocusNode.value);
            },*/
    );
  }
}
