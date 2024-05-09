import 'package:flutter_getx_mvvm_mvc_pattern/models/login/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferenceViewModel{

  Future<bool> saveUser(UserModel userModel) async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('token', userModel.token.toString());
    sharedPreferences.setBool('isLogin', userModel.isLogin!);
    return true;
  }

  Future<UserModel> getUser() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString('token');
    bool? isLogin = sharedPreferences.getBool('isLogin');
    return UserModel(
      token : token,
      isLogin: isLogin,
    );
  }

  Future<bool> removeUser() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.clear();
    return true;
  }
}