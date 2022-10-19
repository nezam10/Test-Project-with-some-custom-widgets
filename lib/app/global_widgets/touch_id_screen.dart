import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test_project/app/global_widgets/touch_id_screen2.dart';

class TouchIdScreen extends StatelessWidget {
  TouchIdScreen({super.key});

  final TextStyle whiteTextStyle = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xffFFFFFF));
  final TextStyle greyTextStyle400 = const TextStyle(
      fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xffD4D4D4));
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
        title: const Text("Touch ID"),
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Set-up Touch ID", style: blackTextStyleBold),
                        const SizedBox(height: 5),
                        Text(
                            "For making your account,more safe and secured,you can add your fingerprint to login in your account.",
                            style: smallBlackTextStyle),
                        const Spacer(),
                        Container(
                          height: 171,
                          width: 171,
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 1,
                              color: const Color(0xffDADADA),
                            ),
                          ),
                          child:
                              SvgPicture.asset("assets/svg/fingerprint2.svg"),
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 30),
                            InkWell(
                              onTap: () {
                                Get.to(() => TouchIdScreen2());
                              },
                              child: Container(
                                height: 50,
                                width: Get.width * 0.6,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: const Color(0xffE19722),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child:
                                    Text("Set up now", style: whiteTextStyle),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text("Will do it later",
                                  style: blackTextStyle),
                            ),
                          ],
                        ),
                        const Spacer(),
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
