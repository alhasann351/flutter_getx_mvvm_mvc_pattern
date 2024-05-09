import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/view/login/widgets/input_email.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/view/login/widgets/input_password.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/view/login/widgets/login_button.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/view_models/controller/login/login_view_model.dart';
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
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputEmail(),
              const SizedBox(
                height: 15,
              ),
              InputPassword(),
              const SizedBox(
                height: 30,
              ),
              LoginButton(formKey: _formKey,),
            ],
          ),
        ),
      )
    );
  }
}
