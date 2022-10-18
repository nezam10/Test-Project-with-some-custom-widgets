import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProofOfResidency extends StatelessWidget {
  ProofOfResidency({super.key});

  TextStyle BlackTextStyle = const TextStyle(
      fontSize: 17, fontWeight: FontWeight.w600, color: Color(0xff3D2323));
  TextStyle BlackTextStyleBold = const TextStyle(
      fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xff002739));
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Text("Proof Of Residencey", style: BlackTextStyleBold),
                ),
                CustomListView(),
                CustomListView(),
                CustomListView(),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    height: 50,
                    width: Get.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xffE19722),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Continue", style: whiteTextStyle),
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

class CustomListView extends StatelessWidget {
  const CustomListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xffF9F9F9),
        borderRadius: BorderRadius.circular(7),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.only(
          left: 15,
          right: 22,
        ),
        minLeadingWidth: 5,
        leading: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Color(0xffF6F0E6),
            shape: BoxShape.circle,
          ),
          child: Image.asset("assets/icons/about.png"),
        ),
        title: Text("title"),
        subtitle: Text("subtitle"),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 15,
          color: Color(0xffE19722),
        ),
      ),
    );
  }
}
