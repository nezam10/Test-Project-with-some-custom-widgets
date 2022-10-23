import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test_project/app/global_widgets/faq_screen.dart';
import 'package:test_project/app/global_widgets/fees_and_charges_screen.dart';
import 'package:test_project/app/global_widgets/kyc_screen.dart';
import 'package:test_project/app/global_widgets/membership_banefits_screen.dart';
import 'package:test_project/app/global_widgets/need_help_screen.dart';
import 'package:test_project/app/global_widgets/settings.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});

  TextStyle BlackTextStyle = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff4A4A4A));
  TextStyle smallGreyTextStyle = const TextStyle(
      fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xff616161));
  TextStyle mediumBlackTextStyle = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff444242));
  TextStyle smallBlackTextStyle = const TextStyle(
      fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff4A4A4A));
  TextStyle whiteTextStyle = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xffffffff));

  TextStyle smallBlackTextStyle500 = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff444242));
  TextStyle blackTextStyleBold = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff444242));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("Menu Screen"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              child: Container(
                height: Get.height * 0.8,
                width: Get.width,
                color: const Color(0xffF8F8F8),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Color(0xffFFFFFF),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Container(
                                    height: 72,
                                    width: 72,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(31),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                "assets/images/profile_img.png"))),
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text("Emma Evans Phillips ",
                                              style: BlackTextStyle),
                                          Image.asset(
                                            "assets/icons/active.png",
                                            height: 17,
                                            width: 17,
                                          ),
                                        ],
                                      ),
                                      Text("CP6372732",
                                          style: smallGreyTextStyle),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const Divider(
                              height: 25,
                              color: Color(0xffE7E7E7),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text("Basic", style: smallBlackTextStyle),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                              "assets/icons/pound_coin.png"),
                                          const SizedBox(width: 5),
                                          Text("100 Points",
                                              style: mediumBlackTextStyle),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 45,
                                  width: 2,
                                  color: const Color(0xffE7E7E7),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          customDialog(context);
                                        },
                                        child: Container(
                                          height: 35,
                                          width: Get.width * 0.3,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff2BBED9),
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Icon(
                                                Icons.chat,
                                                color: Color(0xffffffff),
                                              ),
                                              const SizedBox(width: 5),
                                              Text("Chat",
                                                  style: whiteTextStyle)
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              height: 30,
                              color: Color(0xffE7E7E7),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text("Profile Settings",
                            style: Get.textTheme.titleMedium),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        color: const Color(0xffFFFFFF),
                        child: Column(
                          children: [
                            CustomListTyle2(
                              onTap: () {},
                              smallBlackTextStyle500: Get.textTheme.titleSmall!,
                              svgicons: "assets/svg/profile.svg",
                              title: "Profile",
                            ),
                            CustomListTyle2(
                              onTap: () {
                                Get.to(() => kycScreen());
                              },
                              smallBlackTextStyle500: smallBlackTextStyle500,
                              svgicons: "assets/svg/profile.svg",
                              title: "Kyc",
                            ),
                            CustomListTyle2(
                              onTap: () {
                                Get.to(() => MembershipBenefitsScreen());
                              },
                              smallBlackTextStyle500: smallBlackTextStyle500,
                              svgicons: "assets/svg/membership.svg",
                              title: "Membership Benefits",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child:
                            Text("Account Settings", style: blackTextStyleBold),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        color: const Color(0xffFFFFFF),
                        child: Column(
                          children: [
                            CustomListTyle2(
                              onTap: () {
                                Get.to(() => SettingsScreen());
                                print("setting");
                              },
                              smallBlackTextStyle500: smallBlackTextStyle500,
                              svgicons: "assets/svg/setting.svg",
                              title: "Settings",
                            ),
                            CustomListTyle2(
                              onTap: () {},
                              smallBlackTextStyle500: smallBlackTextStyle500,
                              svgicons: "assets/svg/choose_lang.svg",
                              title: "Choose Language",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text("More", style: blackTextStyleBold),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        color: const Color(0xffFFFFFF),
                        child: Column(
                          children: [
                            CustomListTyle2(
                              onTap: () {
                                Get.to(() => FeesAndChargesScreen());
                              },
                              smallBlackTextStyle500: smallBlackTextStyle500,
                              svgicons: "assets/svg/fees_and_charges.svg",
                              title: "Fees and Charges",
                            ),
                            CustomListTyle2(
                              onTap: () {},
                              smallBlackTextStyle500: smallBlackTextStyle500,
                              svgicons: "assets/svg/promotions.svg",
                              title: "Promotions",
                            ),
                            CustomListTyle2(
                              onTap: () {
                                Get.to(() => FaqScreen());
                              },
                              smallBlackTextStyle500: smallBlackTextStyle500,
                              svgicons: "assets/svg/faq.svg",
                              title: "FAQ",
                            ),
                            CustomListTyle2(
                              onTap: () {
                                Get.to(() => NeedHelpScreen());
                              },
                              smallBlackTextStyle500: smallBlackTextStyle500,
                              svgicons: "assets/svg/need_help.svg",
                              title: "Need Help?",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomListTyle2 extends StatelessWidget {
  final String svgicons;
  final String title;
  final void Function()? onTap;
  const CustomListTyle2({
    Key? key,
    required this.smallBlackTextStyle500,
    required this.svgicons,
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
        leading: SvgPicture.asset(
          svgicons.toString(),
        ),
        title: Text(title.toString(), style: smallBlackTextStyle500),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 15,
          color: Color(0xff444242),
        ),
      ),
    );
  }
}

TextStyle blackTextStyle600 = const TextStyle(
    fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xff2D2D2D));
TextStyle buttonTextStyle = const TextStyle(
    fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xffE19722));
TextStyle buttonTextStyle2 = const TextStyle(
    fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xffFFFFFF));

customDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    barrierColor: Colors.black.withOpacity(0.7),
    builder: (BuildContext context) {
      return AlertDialog(
        titlePadding: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        backgroundColor: const Color(0xffFFFFFF),
        content: SizedBox(
          height: 180,
          width: Get.width * 0.95,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Text("Are you sure\nyou want to sign out?",
                  textAlign: TextAlign.center, style: blackTextStyle600),
              const SizedBox(height: 50),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () => Get.back(),
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xffF5F1E9),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("Cancel", style: buttonTextStyle),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xffE19722),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("Yes", style: buttonTextStyle2),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}
