import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/app/modules/home/controllers/home_controller.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: homeController.dataList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Card(
                  child: Text(homeController.dataList[index]["id"].toString())),
            );
          },
        ),
      ),
    );
  }
}
