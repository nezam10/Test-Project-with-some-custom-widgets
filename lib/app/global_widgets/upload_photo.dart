import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_project/app/global_widgets/submited_screen.dart';
import 'package:test_project/app/global_widgets/take_photo_screen.dart';

class UploadPhotoScreen extends StatefulWidget {
  UploadPhotoScreen({super.key});

  @override
  State<UploadPhotoScreen> createState() => _UploadPhotoScreenState();
}

class _UploadPhotoScreenState extends State<UploadPhotoScreen> {
  TextStyle blackTextStyleBold = const TextStyle(
      fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xff002739));

  TextStyle blackTextStyle = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff4B4B4B));

  TextStyle smallBlackTextStyle = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff4B4B4B));

  TextStyle whiteTextStyle = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xffFFFFFF));
  TextStyle ssTextStyle = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xffF7AA31));

  File? image;
  List<File?> image2 = [];

  Future picImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemp = File(image.path);
      setState(() {
        this.image = imageTemp;
        image2.add(imageTemp);
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
      setState(() {
        this.image = imageTemp;
        image2.add(imageTemp);
      });
    } on PlatformException catch (e) {
      print("Failed to pick image: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("Upload Photo"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(10),
                height: Get.height * 0.8,
                width: Get.width,
                color: const Color(0xffFFFFFF),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    image2.length > 1
                        ? CustomButton(
                            color: const Color(0xffE19722),
                            title: "Verified",
                            style: whiteTextStyle,
                            //icon: Icons.ad_units,
                            widget: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 30,
                                width: 30,
                                padding: const EdgeInsets.all(7),
                                decoration: const BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset("assets/icons/active.png"),
                              ),
                            ),
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Upload Your Passport",
                                  style: blackTextStyleBold),
                              const SizedBox(height: 5),
                              Text("Take a Photo of the front of your Passport",
                                  style: smallBlackTextStyle),
                            ],
                          ),
                    const SizedBox(height: 20),
                    Visibility(
                      visible: image2.isNotEmpty,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: image2.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: DottedBorder(
                              color: const Color(0xffE19722),
                              borderType: BorderType.RRect,
                              radius: const Radius.circular(12),
                              dashPattern: const [3, 3],
                              strokeWidth: 2,
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                child: Container(
                                  margin: const EdgeInsets.all(5),
                                  height: 203,
                                  width: Get.width,
                                  child: Image.file(
                                    image2[index]!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Visibility(
                      visible: image2.length == 0,
                      child: DottedBorder(
                        color: const Color(0xffE19722),
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(12),
                        dashPattern: const [3, 3],
                        strokeWidth: 2,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          child: Container(
                            height: 203,
                            width: Get.width,
                            color: const Color(0xffFFFFFF),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 120,
                                  width: 120,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffF5F7FE),
                                    shape: BoxShape.circle,
                                  ),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      margin: const EdgeInsets.all(15),
                                      decoration: const BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          shape: BoxShape.circle),
                                      child: Container(
                                        margin: const EdgeInsets.all(15),
                                        decoration: BoxDecoration(
                                            color: const Color(0xff2BBED9),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Image.asset(
                                          "assets/icons/arrowup.png",
                                          color: const Color(0xffFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Text("Upload your Passport",
                                    style: blackTextStyle)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    InkWell(
                      onTap: () {
                        // await picImage();
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
                      child: Visibility(
                        visible: image2.length < 2,
                        child: Container(
                          height: 50,
                          width: Get.width,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xff2BBED9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icons/camera.png"),
                              const SizedBox(width: 8),
                              Text("Take Photo", style: whiteTextStyle),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    CustomButton(
                      onTap: () {
                        if (image2.length == 2) {
                          Get.to(() => SubmitedScreen());
                        }
                      },
                      style: whiteTextStyle,
                      color: const Color(0xffE19722),
                      title: "Continue",
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Color? color;
  final String title;
  final TextStyle? style;
  final Widget? widget;
  final void Function()? onTap;
  const CustomButton({
    Key? key,
    this.color,
    required this.title,
    this.style,
    this.onTap,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: Get.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: widget),
            Text(title.toString(), style: style),
          ],
        ),
      ),
    );
  }
}


// const Color(0xffE19722)
