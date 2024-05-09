import 'package:flutter_getx_mvvm_mvc_pattern/data/response/status.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/models/home/user_list_model.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/repository/home_repository/home_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class HomeViewModel extends GetxController{
  final _userApi = HomeRepository();

  final rxRequestStatus = Status.LOADING.obs;
  final userList = UserListModel().obs;
  RxString error = ''.obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setUserList(UserListModel _value) => userList.value = _value;
  void setError(String _value) => error.value = _value;

  void userListApi(){
    _userApi.userListApi().then((value){
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, stackTrace){
      print(error);
      print(stackTrace);
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);
    });
  }

  void refreshUserListApi(){
    setRxRequestStatus(Status.LOADING);

    _userApi.userListApi().then((value){
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, stackTrace){
      print(error);
      print(stackTrace);
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);
    });
  }
}