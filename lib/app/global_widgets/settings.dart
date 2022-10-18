import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});

  TextStyle BlackTextStyle = const TextStyle(
      fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xff616161));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("Menu Screen"),
      ),
      body: Card(
        child: Container(
          color: const Color(0xffFFFFFF),
          child: Column(
            children: [
              CustomListTyle2(
                onTap: () {},
                smallBlackTextStyle500: BlackTextStyle,
                assetsImage: "assets/icons/lock.png",
                title: "Set Passcode",
              ),
              CustomListTyle2(
                onTap: () {},
                smallBlackTextStyle500: BlackTextStyle,
                assetsImage: "assets/icons/lock.png",
                title: "Update Password",
              ),
              CustomListTyle2(
                onTap: () {},
                smallBlackTextStyle500: BlackTextStyle,
                assetsImage: "assets/icons/enable_touch_id.png",
                title: "Enable Touch ID",
              ),
              CustomListTyle2(
                onTap: () {},
                smallBlackTextStyle500: BlackTextStyle,
                assetsImage: "assets/icons/share.png",
                title: "Share App",
              ),
              CustomListTyle2(
                onTap: () {},
                smallBlackTextStyle500: BlackTextStyle,
                assetsImage: "assets/icons/terms_conditions.png",
                title: "Terms & Conditions",
              ),
              CustomListTyle2(
                onTap: () {},
                smallBlackTextStyle500: BlackTextStyle,
                assetsImage: "assets/icons/privacy.png",
                title: "Privacy Notice",
              ),
              CustomListTyle2(
                onTap: () {},
                smallBlackTextStyle500: BlackTextStyle,
                assetsImage: "assets/icons/about.png",
                title: "About Us",
              ),
              CustomListTyle2(
                onTap: () {},
                smallBlackTextStyle500: BlackTextStyle,
                assetsImage: "assets/icons/contact.png",
                title: "Contact Us",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomListTyle2 extends StatelessWidget {
  final String assetsImage;
  final String title;
  final void Function()? onTap;
  const CustomListTyle2({
    Key? key,
    required this.smallBlackTextStyle500,
    required this.assetsImage,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final TextStyle smallBlackTextStyle500;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xffFFFFFF),
      child: ListTile(
        contentPadding: const EdgeInsets.only(
          left: 15,
          right: 22,
        ),
        minLeadingWidth: 5,
        onTap: onTap,
        leading: Image.asset(
          assetsImage.toString(),
        ),
        title: Text(title.toString(), style: smallBlackTextStyle500),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 15,
          color: Color(0xff616161),
        ),
      ),
    );
  }
}
