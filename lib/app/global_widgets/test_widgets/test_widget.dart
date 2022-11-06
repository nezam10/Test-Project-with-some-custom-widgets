import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppTestWidget extends StatefulWidget {
  const AppTestWidget({super.key});

  @override
  State<AppTestWidget> createState() => _AppTestWidgetState();
}

class _AppTestWidgetState extends State<AppTestWidget> {
  DateTime dateTime = DateTime.now();
  late int a = 1;
  void incre() {
    if (a < 60) {
      a++;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    incre();
  }

  @override
  Widget build(BuildContext context) {
    SingleToneCalss singleToneCalss = SingleToneCalss();
    singleToneCalss.name = "Nezam";
    singleToneCalss.address = "Feni";
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 80,
              width: Get.width,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/animations/cuminpay.gif",
                    height: 70,
                    width: 70,
                  ),
                  const SizedBox(width: 10),
                  const Text("Loadint..")
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(singleToneCalss.name.toString()),
            Text(singleToneCalss.address.toString()),
            Container(
              child: Text(
                  "${dateTime.hour}: ${dateTime.minute}: ${dateTime.second}"),
            )
          ],
        ),
      ),
    );
  }
}

class SingleToneCalss {
  static final SingleToneCalss _singletone = SingleToneCalss._internal();

  factory SingleToneCalss() {
    return _singletone;
  }
  SingleToneCalss._internal();
  String? name;
  String? address;
}
