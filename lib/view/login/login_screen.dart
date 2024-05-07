import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/colors/app_colors.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/view_models/controller/login_view_model.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginViewModel = Get.put(LoginViewModel());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*iconTheme: const IconThemeData(
          color: AppColors.appbarIconColor
        ),*/
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          'login_appbar_text'.tr,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Focus(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
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
              ),
              const SizedBox(height: 15,),
              TextFormField(
                controller: loginViewModel.passwordController.value,
                focusNode: loginViewModel.passwordFocusNode.value,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
