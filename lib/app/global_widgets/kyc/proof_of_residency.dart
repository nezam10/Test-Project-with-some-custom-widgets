import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/app/global_widgets/kyc/upload_photo.dart';

class ProofOfResidency extends StatelessWidget {
  ProofOfResidency({super.key});

  final TextStyle blackTextStyle = const TextStyle(
      fontSize: 17, fontWeight: FontWeight.w600, color: Color(0xff3D2323));
  final TextStyle blackTextStyleBold = const TextStyle(
      fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xff002739));
  final TextStyle whiteTextStyle = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xffFFFFFF));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("Froof of Residency"),
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
                  padding: const EdgeInsets.all(20),
                  child: Text("Proof Of Residencey", style: blackTextStyleBold),
                ),
                const CustomListView(
                  title: "Passport",
                  subtitle: "Isshued In USA",
                  assetImg: "assets/icons/about.png",
                ),
                const CustomListView(
                  title: "Naional Id",
                  subtitle: "Isshued In USA",
                  assetImg: "assets/icons/about.png",
                ),
                const CustomListView(
                  title: "Drivers License",
                  subtitle: "Isshued In USA",
                  assetImg: "assets/icons/about.png",
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Get.to(() => UploadPhotoScreen());
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
  final String title;
  final String? subtitle;
  final String? assetImg;
  const CustomListView({
    Key? key,
    required this.title,
    required this.subtitle,
    this.assetImg,
  }) : super(key: key);

  final TextStyle blackTextStyle = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff3D3D3D));
  final TextStyle blackTextStyle400 = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff3D3D3D));

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xffF9F9F9),
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
          decoration: const BoxDecoration(
            color: Color(0xffF6F0E6),
            shape: BoxShape.circle,
          ),
          child: Image.asset(assetImg.toString()),
        ),
        title: Text(title.toString(), style: blackTextStyle),
        subtitle: Text(subtitle.toString(), style: blackTextStyle400),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 15,
          color: Color(0xffE19722),
        ),
      ),
    );
  }
}
