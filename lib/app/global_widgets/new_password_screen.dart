import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/app/global_widgets/touch_id_screen.dart';

class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({super.key});

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
        title: const Text("New Password"),
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
                        Text("Create New Password", style: blackTextStyleBold),
                        const SizedBox(height: 5),
                        Text(
                            "Your new password must be different from previous used passwords.",
                            style: smallBlackTextStyle),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 25),
                            Text("Old Password", style: blackTextStyle),
                            const SizedBox(height: 10),
                            CreateBoxShap(
                              color: const Color(0xffF3F5F7),
                              child: TextField(
                                obscureText: true,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelStyle: greyTextStyle400,
                                    hintStyle: greyTextStyle400,
                                    hintText: "Enter your old password",
                                    suffixIcon: const Icon(
                                      Icons.visibility,
                                      color: Color(0xffA6A5A9),
                                    )),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text("Must be at least 8 characters",
                                style: smallGreyTextStyle400),
                            const SizedBox(height: 25),
                            Text("New Password", style: blackTextStyle),
                            const SizedBox(height: 10),
                            CreateBoxShap(
                              color: const Color(0xffF3F5F7),
                              child: TextField(
                                obscureText: true,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelStyle: greyTextStyle400,
                                    hintStyle: greyTextStyle400,
                                    hintText: "Enter your new password",
                                    suffixIcon: const Icon(
                                      Icons.visibility,
                                      color: Color(0xffA6A5A9),
                                    )),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text("Must be at least 8 characters",
                                style: smallGreyTextStyle400),
                            const SizedBox(height: 25),
                            Text("Confirm Password", style: blackTextStyle),
                            const SizedBox(height: 10),
                            CreateBoxShap(
                              color: const Color(0xffF3F5F7),
                              child: TextField(
                                obscureText: true,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelStyle: greyTextStyle400,
                                    hintStyle: greyTextStyle400,
                                    hintText: "Enter your confirm password",
                                    suffixIcon: const Icon(
                                      Icons.visibility,
                                      color: Color(0xffA6A5A9),
                                    )),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text("Both passwords must match",
                                style: smallGreyTextStyle400),
                            const SizedBox(height: 30),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 50,
                                width: Get.width,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: const Color(0xffE19722),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text("Reset Password",
                                    style: whiteTextStyle),
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
    {required Widget child, Color color = Colors.white, double padding = 10}) {
  return Container(
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
