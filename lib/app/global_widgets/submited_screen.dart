import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubmitedScreen extends StatelessWidget {
  const SubmitedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("Kyc Screen"),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            height: Get.height * 0.8,
            width: Get.width,
            color: const Color(0xffFFFFFF),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/icons/verify.png"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
