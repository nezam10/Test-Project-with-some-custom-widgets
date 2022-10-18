import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/app/global_widgets/proof_of_residency.dart';

class kycScreen extends StatelessWidget {
  kycScreen({super.key});

  TextStyle BlackTextStyle = const TextStyle(
      fontSize: 17, fontWeight: FontWeight.w600, color: Color(0xff3D2323));
  TextStyle whiteTextStyle = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xffFFFFFF));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("Kyc Screen"),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            height: Get.height * 0.8,
            width: Get.width,
            color: const Color(0xffFFFFFF),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                            color: const Color(0xff2BBED9),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          "assets/icons/persion.png",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text("Lets's Verify Your \n Identity",
                    style: BlackTextStyle, textAlign: TextAlign.center),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Get.to(() => ProofOfResidency());
                  },
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    height: 50,
                    width: Get.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xffE19722),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Verify Identity", style: whiteTextStyle),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          )
        ],
      ),
    );
  }
}
