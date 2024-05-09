import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/data/response/status.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/components/general_exception_widget.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/components/internet_exception_widget.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/components/loading_animation.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/routes/routes_name.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/view/home/widgets/user_list.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/view_models/controller/home/home_view_model.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/view_models/controller/user_preference/user_preference_view_model.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  UserPreferenceViewModel userPreferenceViewModel = UserPreferenceViewModel();

  final homeViewModel = Get.put(HomeViewModel());

  @override
  void initState() {
    super.initState();
    homeViewModel.userListApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              userPreferenceViewModel.removeUser().then((value) {
                Get.toNamed(RoutesName.loginScreen);
              });
            },
            icon: const Icon(
              Icons.logout_outlined,
              color: Colors.white,
            ),
          ),
        ],
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'Home',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Obx(
        () {
          switch (homeViewModel.rxRequestStatus.value) {
            case Status.LOADING:
              return const LoadingAnimation();
            case Status.ERROR:
              if(homeViewModel.error.value == 'No internet'){
                return const InternetExceptionWidget();
              }else{
                return const GeneralExceptionWidget();
              }
            case Status.COMPLETED:
              return UserList();
          }
        },
      ),
    );
  }
}
