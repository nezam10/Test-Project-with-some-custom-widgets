import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:test_project/app/global_widgets/test_widgets/stepper_line.dart';
import 'package:timer_builder/timer_builder.dart';

import '../upload_photo.dart';

class AppTestWidget extends StatefulWidget {
  const AppTestWidget({super.key});

  @override
  State<AppTestWidget> createState() => _AppTestWidgetState();
}

class _AppTestWidgetState extends State<AppTestWidget> {
  File? image;
  String? name;
  Future picImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemp = File(image.path);
      final imgName = image.name;
      setState(() {
        this.image = imageTemp;
        this.name = imgName;
      });
    } on PlatformException catch (e) {
      print("Failed to pick image: $e");
    }
  }

  //
  Future picImageWithCamera() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;

      final imageTemp = File(image.path);
      final imgName = image.name;
      setState(() {
        this.image = imageTemp;
        this.name = imgName;
      });
    } on PlatformException catch (e) {
      print("Failed to pick image: $e");
    }
  }

  double _currentSliderValue = 20;

  DateTime dateTime = DateTime.now();

  String getSystemTime() {
    return DateFormat("hh:mm:ss a").format(DateTime.now());
  }

  List titleList = [];

  @override
  Widget build(BuildContext context) {
    TextStyle whiteTextStyle = const TextStyle(
        fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xffFFFFFF));
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
                  //const Text("Loading..")
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
            TimerBuilder.periodic(
              const Duration(seconds: 1),
              builder: (context) {
                //print("${getSystemTime()}");
                return Text(
                  "${getSystemTime()}",
                  style: const TextStyle(
                      color: Color(0xff2d386b),
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 55,
                width: Get.width,
                color: const Color(0xffF3F5F7),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffE19722),
                        ),
                        onPressed: () {
                          Get.bottomSheet(
                            Card(
                              child: SizedBox(
                                height: 200,
                                width: Get.width,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40, right: 40),
                                      child: CustomButton(
                                        onTap: () async {
                                          Get.back();
                                          await picImageWithCamera();
                                        },
                                        //style: style,
                                        color: const Color(0xffE19722),
                                        title: "Camera",
                                        style: whiteTextStyle,
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40, right: 40),
                                      child: CustomButton(
                                        onTap: () async {
                                          Get.back();
                                          await picImage();
                                        },
                                        //style: style,
                                        color: const Color(0xffE19722),
                                        title: "Gallery",
                                        style: whiteTextStyle,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        child: const Text("Choose File"),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      flex: 4,
                      child: Text(
                        name ?? "No file chosen",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    Visibility(
                      visible: image != null,
                      child: Container(
                          height: 30,
                          width: 30,
                          color: Colors.red,
                          child: image != null
                              ? Image.file(
                                  image!,
                                  fit: BoxFit.cover,
                                )
                              : Container()),
                    ),
                  ],
                ),
              ),
            ),
            Slider(
              value: _currentSliderValue,
              max: 100,
              divisions: 5,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
            TextButton(
                onPressed: () {
                  Get.to(() => CustomStepper(
                      icons: [Icons.add, Icons.add, Icons.add],
                      curStep: 3,
                      titles: ["title1", "title2", "title3"],
                      width: 200,
                      color: Colors.blue));
                },
                child: const Text("Stepper"))
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
