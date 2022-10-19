import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/app/global_widgets/new_password_screen.dart';

class UpdatePasswordScreen2 extends StatelessWidget {
  UpdatePasswordScreen2({super.key});

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
                    height: 713,
                    width: Get.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Spacer(),
                        Container(
                          height: 142,
                          width: 142,
                          decoration: BoxDecoration(
                              color: const Color(0xffF5F7FE),
                              borderRadius: BorderRadius.circular(71)),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              margin: const EdgeInsets.all(15),
                              decoration: const BoxDecoration(
                                color: Color(0xffFFFFFF),
                                shape: BoxShape.circle,
                              ),
                              child: Container(
                                margin: const EdgeInsets.all(30),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(
                                  "assets/icons/email2.png",
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Text("Check your mail", style: blackTextStyleBold),
                        const SizedBox(height: 5),
                        Text(
                          "we have send a password recover instructions to your email.",
                          style: smallBlackTextStyle,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 30),
                        InkWell(
                          onTap: () {
                            Get.to(() => NewPasswordScreen());
                          },
                          child: Container(
                            height: 50,
                            width: Get.width,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xffE19722),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child:
                                Text("Open email app", style: whiteTextStyle),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("Skip,i’ll confirm later",
                              style: blackTextStyle),
                        ),
                        const SizedBox(height: 30),
                        const Spacer(),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text:
                                    'Did not receive the email? Check your spam filter,or',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff6F6F6F)),
                              ),
                              TextSpan(
                                text: ' try another email.!',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffE19722),
                                ),
                              ),
                            ],
                          ),
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
