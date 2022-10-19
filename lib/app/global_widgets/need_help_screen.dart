import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/app/global_widgets/new_password_screen.dart';

class NeedHelpScreen extends StatelessWidget {
  NeedHelpScreen({super.key});

  final TextStyle whiteTextStyle = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xffFFFFFF));
  final TextStyle greyTextStyle400 = const TextStyle(
      fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xffD4D4D4));
  final TextStyle blackTextStyle = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff505050));

  final TextStyle smallBlackTextStyle = const TextStyle(
      fontSize: 21, fontWeight: FontWeight.w400, color: Color(0xff808080));
  final TextStyle blackTextStyleBold = const TextStyle(
      fontSize: 21, fontWeight: FontWeight.w500, color: Color(0xff505050));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update Password2"),
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
                    height: Get.height * 0.75,
                    width: Get.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Spacer(),
                        Image.asset("assets/icons/help.png"),
                        const SizedBox(height: 15),
                        Text(
                          "How can we help you?",
                          style: blackTextStyleBold,
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(),
                        Container(
                          height: 55,
                          width: Get.width,
                          decoration: BoxDecoration(
                            color: const Color(0xffFFF8ED),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const ListTile(
                            leading: ImageIcon(
                              AssetImage("assets/icons/help.png"),
                              color: Color(0xffE19722),
                            ),
                            title: Text("Connect With Email ?"),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                              color: Color(0xffE19722),
                            ),
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              color: Color(0xffFFF7EA),
                              shape: BoxShape.circle,
                            ),
                            child: Container(
                              margin: const EdgeInsets.all(35),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                "assets/icons/email2.png",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text("Send us an email :", style: smallBlackTextStyle),
                        const SizedBox(height: 5),
                        Text(
                          "caribpay@gmail.com",
                          style: blackTextStyleBold,
                          textAlign: TextAlign.center,
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
