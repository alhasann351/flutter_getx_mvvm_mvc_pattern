import 'package:flutter/cupertino.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/repository/login_repository/login_repository.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/utils/app_utils.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class LoginViewModel extends GetxController{
  final _api = LoginRepository();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loadingAnimation = false.obs;
  
  void loginApi(){
    loadingAnimation.value = true;
    Map data = {
      'email' : emailController.value.text,
      'password' : passwordController.value.text,
    };
    _api.loginApi(data).then((value){
      loadingAnimation.value = false;
      if(value['error'] == 'user not found'){
        AppUtils.showSnackBar('Login', value['error']);
      }else if(emailController.value.text.isEmpty && passwordController.value.text.isEmpty){
        AppUtils.showSnackBar('Error', value['error']);
      }
      else{
        AppUtils.showSnackBar('Login', 'Login successfully');
      }

    }).onError((error, stackTrace){
      loadingAnimation.value = false;
      print(error.toString());
      loadingAnimation =
      AppUtils.showSnackBar('Error', error.toString());
    });
  }
}