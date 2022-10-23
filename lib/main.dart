import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_project/app/modules/home/controllers/home_controller.dart';

import 'app/routes/app_pages.dart';

void main() {
  HomeController homeController = Get.put(HomeController());
  homeController.getAllData();
  print("main");
  runApp(
    GetMaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          //displayLarge: TextStyle(fontSize: 22)
          //titleSmall: ,
          titleLarge: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff444242)),
          titleMedium: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xff444242)),
          titleSmall: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff444242)),
          // bodySmall: ,
          // bodyMedium: ,
          // bodyLarge: ,
          // bodyText1: ,
          // bodyText2: ,
          // button: ,
          // subtitle1: ,
          // subtitle2: ,
          // labelSmall: ,
          // labelMedium: ,
          // labelLarge: ,
        ),
      ),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
