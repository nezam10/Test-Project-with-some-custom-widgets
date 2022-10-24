import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/app/global_widgets/touch_id_screen.dart';

class ContactUsScreen extends StatelessWidget {
  ContactUsScreen({super.key});

  final TextStyle whiteTextStyle = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xffFFFFFF));
  final TextStyle greyTextStyle400 = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xffD4D4D4));
  final TextStyle smallGreyTextStyle400 = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff8A8A8A));
  final TextStyle blackTextStyle = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff505050));
  final TextStyle smallBlackTextStyle = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff5C5C5C));
  final TextStyle blackTextStyleBold = const TextStyle(
      fontSize: 23, fontWeight: FontWeight.w600, color: Color(0xff212121));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Us"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    height: 713,
                    width: Get.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name", style: blackTextStyle),
                            const SizedBox(height: 10),
                            CreateBoxShap(
                              color: const Color(0xffF3F5F7),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelStyle: greyTextStyle400,
                                  hintStyle: greyTextStyle400,
                                  hintText: "Johan smith",
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            Text("Email", style: blackTextStyle),
                            const SizedBox(height: 10),
                            CreateBoxShap(
                              color: const Color(0xffF3F5F7),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelStyle: greyTextStyle400,
                                  hintStyle: greyTextStyle400,
                                  hintText: "example@gmail.com",
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            const SizedBox(height: 25),
                            Text("Message", style: blackTextStyle),
                            const SizedBox(height: 10),
                            CreateBoxShap(
                              height: 176,
                              color: const Color(0xffF3F5F7),
                              child: TextField(
                                //keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.newline,
                                maxLines: 30,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelStyle: greyTextStyle400,
                                  hintStyle: greyTextStyle400,
                                  hintText: "Message...",
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            const SizedBox(height: 30),
                            InkWell(
                              onTap: () {
                                Get.to(() => TouchIdScreen());
                              },
                              child: Container(
                                height: 50,
                                width: Get.width,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: const Color(0xffF7AA31),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text("Send", style: whiteTextStyle),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget CreateBoxShap(
    {required Widget child,
    Color color = Colors.white,
    double padding = 10,
    double? height}) {
  return Container(
    height: height,
    padding: EdgeInsets.symmetric(horizontal: padding),
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              blurRadius: 5,
              color: Colors.white.withOpacity(0.25),
              offset: const Offset(0, 0))
        ]),
    child: child,
  );
}
