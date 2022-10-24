import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:test_project/app/global_widgets/menu_screen.dart';

class SetPinScreen extends StatelessWidget {
  const SetPinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle blackTextStyle = TextStyle(
        fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xff3E3E3E));
    const TextStyle smallBlackTextStyle = TextStyle(
        fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xff343030));
    const TextStyle whiteTextStyle = TextStyle(
        fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xffFFFFFF));
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        title: const Text("Set Passcode"),
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            SizedBox(
              height: 200,
              width: Get.width * 0.75,
              child: Image.asset(
                "assets/images/setPinImg.png",
                fit: BoxFit.fitHeight,
              ),
            ),
            const Spacer(),
            const Text("Enter PIN", style: blackTextStyle),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SetPinContainer(),
                SetPinContainer(),
                SetPinContainer(),
                SetPinContainer(),
              ],
            ),
            const SizedBox(height: 20),
            const Text("Confirm PIN", style: blackTextStyle),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SetPinContainer(),
                SetPinContainer(),
                SetPinContainer(),
                SetPinContainer(),
              ],
            ),
            const SizedBox(height: 10),
            const Text("Your Card **** **** **** 4567",
                style: smallBlackTextStyle),
            const Spacer(),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 50,
                  width: Get.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xffE19722),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text("Submit", style: whiteTextStyle),
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class SetPinContainer extends StatelessWidget {
  const SetPinContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 57,
        width: 63,
        decoration: BoxDecoration(
            color: const Color(0xffF3F5F7),
            borderRadius: BorderRadius.circular(11),
            border: Border.all(color: const Color(0xffF7AA31))),
      ),
    );
  }
}
