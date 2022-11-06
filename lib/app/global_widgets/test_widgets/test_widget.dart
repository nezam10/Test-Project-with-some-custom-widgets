import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:timer_builder/timer_builder.dart';

class AppTestWidget extends StatefulWidget {
  const AppTestWidget({super.key});

  @override
  State<AppTestWidget> createState() => _AppTestWidgetState();
}

class _AppTestWidgetState extends State<AppTestWidget> {
  DateTime dateTime = DateTime.now();

  String getSystemTime() {
    var now = DateTime.now();
    return DateFormat("HH:mm:ss").format(now);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
            ),
            TimerBuilder.periodic(const Duration(seconds: 1),
                builder: (context) {
              print("${getSystemTime()}");
              return Text(
                "${getSystemTime()}",
                style: const TextStyle(
                    color: Color(0xff2d386b),
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              );
            }),
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
