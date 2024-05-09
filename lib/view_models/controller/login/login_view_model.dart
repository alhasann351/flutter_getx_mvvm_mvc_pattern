import 'package:flutter/cupertino.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/models/login/user_model.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/repository/login_repository/login_repository.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/routes/routes_name.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/utils/app_utils.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/view_models/controller/user_preference/user_preference_view_model.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class LoginViewModel extends GetxController{
  final _api = LoginRepository();

  UserPreferenceViewModel userPreferenceViewModel = UserPreferenceViewModel();

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
        UserModel userModel = UserModel(
          token: 'token',
          isLogin: true,
        );

        userPreferenceViewModel.saveUser(userModel).then((value){
          Get.delete<LoginViewModel>();
          Get.toNamed(RoutesName.homeScreen)!.then((value){});
        }).onError((error, stackTrace){

        });
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