import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_project/app/modules/home/views/details_page.dart';
import 'package:test_project/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SQFlite"),
        actions: [
          IconButton(
            onPressed: () {
              for (var element in controller.getDataList) {
                controller.addItems(element);
                controller.getAllData();
              }

              Get.to((DetailsPage()));
            },
            icon: const Text("Next"),
          ),
          IconButton(
              onPressed: () {
                Get.toNamed(Routes.CHECK_BALANCE);
              },
              icon: Text("Balance")),
          IconButton(
            onPressed: () {
              Get.to((DetailsPage()));
            },
            icon: Text("Go"),
          ),
        ],
      ),
      body: Obx(() => controller.isDataLoading.value
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: controller.getDataList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(controller.getDataList[index].title.toString()),
                );
              },
            )),
    );
  }
}
