import 'package:flutter_getx_mvvm_mvc_pattern/data/network/network_api_services.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/app_url/app_url.dart';

class LoginRepository{
  final _networkApiServices = NetworkApiServices();

  Future<dynamic> loginApi(var data) async{
    dynamic response = _networkApiServices.postApi(data, AppUrl.loginApiUrl);
    return response;
  }
}