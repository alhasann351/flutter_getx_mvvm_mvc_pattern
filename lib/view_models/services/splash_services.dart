import 'dart:async';

import 'package:flutter_getx_mvvm_mvc_pattern/resources/routes/routes_name.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/view_models/controller/user_preference/user_preference_view_model.dart';
import 'package:get/get.dart';

class SplashServices{
  UserPreferenceViewModel userPreferenceViewModel = UserPreferenceViewModel();

  void isLogin(){
    userPreferenceViewModel.getUser().then((value){
      print(value.token);
      print(value.isLogin);

      if(value.isLogin == false || value.isLogin.toString() == 'null'){
        Timer(const Duration(seconds: 3), () => Get.toNamed(RoutesName.loginScreen));
      }else{
        Timer(const Duration(seconds: 3), () => Get.toNamed(RoutesName.homeScreen));
      }
    });

  }
}