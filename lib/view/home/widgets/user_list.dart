import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../view_models/controller/home/home_view_model.dart';

class UserList extends StatelessWidget {
  UserList({super.key});

  final homeViewModel = Get.put(HomeViewModel());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: homeViewModel.userList.value.data!.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            height: 100,
            child: Card(
              elevation: 15,
              color: Colors.blue.shade100,
              shadowColor: Colors.blue.shade300,
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(homeViewModel
                        .userList.value.data![index].avatar
                        .toString()),
                  ),
                  title: Text(
                    homeViewModel.userList.value.data![index].firstName
                        .toString(),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    homeViewModel.userList.value.data![index].email
                        .toString(),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
