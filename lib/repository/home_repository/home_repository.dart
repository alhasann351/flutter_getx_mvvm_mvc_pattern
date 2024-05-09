import 'package:flutter_getx_mvvm_mvc_pattern/data/network/network_api_services.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/models/home/user_list_model.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/app_url/app_url.dart';

class HomeRepository{
  final _networkApiServices = NetworkApiServices();

  Future<UserListModel> userListApi() async{
    dynamic response = await _networkApiServices.getApi(AppUrl.userListApiUrl);
    return UserListModel.fromJson(response);
  }
}