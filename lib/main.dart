import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_project/app/modules/home/controllers/home_controller.dart';

import 'app/routes/app_pages.dart';

void main() {
  HomeController homeController = Get.put(HomeController());
  homeController.getAllData();
  print("object");
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
