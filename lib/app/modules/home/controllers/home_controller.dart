import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/model/user_data.dart';
import 'package:http/http.dart' as http;

import '../../../data/sqflite/database_connection.dart';

class HomeController extends GetxController {
  late List<UserData?> userData;
  var isDataLoading = true.obs;
  List<UserData> getDataList = [];
  String? userID;
  List<Map<String, dynamic>> dataList = [];

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    getData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

//Future method to read the URL
  Future<List<UserData?>> getData() async {
    isDataLoading(true);
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/posts/"));
    final jsonresponse = json.decode(response.body);
    print(" print jsonresponse >>>>>>>>>>>>>> ${jsonresponse}");

    getDataList = userDataFromJson(jsonresponse);
    print(" print getDataList >>>>>>>>>>>>>> ${getDataList.length}");
    isDataLoading(false);
    return userDataFromJson(jsonresponse);
  }

  addItems(UserData description) {
    var title = description.title.toString();
    var des = description.body.toString();
    var userid = description.id.toString();
    SQLHelper.insertData(title, des, userid).then((value) => {
          if (value != -1)
            {
              print("Data inserted Successfully"),
            }
          else
            {
              print("failed to insert"),
            }
        });
  }

  getAllData() async {
    var List = await SQLHelper.getAllData("1");
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    dataList = List;
    print("list data ${dataList}");
  }
}
