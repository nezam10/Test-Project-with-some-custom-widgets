import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/app/global_widgets/set_pin_screen.dart';

class CardView extends StatelessWidget {
  CardView({super.key});

  TextStyle blackTextStyle = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff4A4A4A));
  TextStyle mediumBlackTextStyle = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff444242));
  TextStyle whiteTextStyle = const TextStyle(
      fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xffffffff));

  TextStyle titleTextStyle = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff444242));
  TextStyle labelTextStyle = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff444242));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
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
                color: const Color(0xffFFFFFF),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text("Blance : ", style: labelTextStyle),
                                Text("USD 10.00", style: blackTextStyle),
                              ],
                            ),
                            Image.asset("assets/icons/balance.png")
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(18),
                        height: 211,
                        width: Get.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xff20788E),
                                  Color(0xff002739),
                                ])),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("CARIBPAY", style: whiteTextStyle),
                                Image.asset("assets/icons/appIcon.png")
                              ],
                            ),
                            const SizedBox(height: 10),
                            Container(
                              alignment: Alignment.center,
                              height: 80,
                              width: Get.width,
                              decoration: const BoxDecoration(
                                //color: Colors.red,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/inner_card_pay.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: Text("**** **** **** 9876 \n ** / ****",
                                  textAlign: TextAlign.center,
                                  style: whiteTextStyle),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("PREFERRED CUSTOMER",
                                    style: whiteTextStyle),
                                const SizedBox(width: 5),
                                SizedBox(
                                  height: 38,
                                  width: 64,
                                  child: Image.asset(
                                    "assets/icons/masterCardIcon.png",
                                    fit: BoxFit.fill,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text("Manage Card", style: Get.textTheme.titleMedium),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0.0,
                                  minimumSize: Size(Get.width * 0.55, 55),
                                  backgroundColor: const Color(0xffD6EBF5),
                                ),
                                onPressed: () {},
                                icon: Image.asset("assets/icons/sendIcon.png"),
                                label: Text("Send To", style: blackTextStyle)),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  elevation: 0.0,
                                  minimumSize: Size(Get.width * 0.55, 55),
                                  backgroundColor: const Color(0xffF5E7D0)),
                              onPressed: () {},
                              icon: Image.asset("assets/icons/addIcon.png"),
                              label: Text("Send To", style: blackTextStyle),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Text("Manage Card", style: Get.textTheme.titleMedium),
                      const SizedBox(height: 10),
                      Container(
                        color: const Color(0xffFFFFFF),
                        child: Column(
                          children: [
                            CustomListTyle2(
                              onTap: () {
                                Get.to(() => const SetPinScreen());
                              },
                              smallBlackTextStyle500: Get.textTheme.titleSmall!,
                              assetsIcon: "assets/icons/transactionsIcon.png",
                              title: "Transactions",
                            ),
                            CustomListTyle2(
                              onTap: () {},
                              smallBlackTextStyle500: titleTextStyle,
                              assetsIcon: "assets/icons/reloadCardIcon.png",
                              title: "Reload Card",
                            ),
                            CustomListTyle2(
                              onTap: () {},
                              smallBlackTextStyle500: titleTextStyle,
                              assetsIcon: "assets/icons/resetPinIcon.png",
                              title: "Reset Pin",
                            ),
                            CustomListTyle2(
                              onTap: () {},
                              smallBlackTextStyle500: titleTextStyle,
                              assetsIcon: "assets/icons/freezeCardIcon.png",
                              title: "Freeze Card",
                            ),
                            CustomListTyle2(
                              onTap: () {},
                              smallBlackTextStyle500: titleTextStyle,
                              assetsIcon: "assets/icons/lostIcon.png",
                              title: "Lost / Stolen",
                            ),
                            CustomListTyle2(
                              onTap: () {},
                              smallBlackTextStyle500: titleTextStyle,
                              assetsIcon: "assets/icons/closeCardIcon.png",
                              title: "Close Card",
                            ),
                            CustomListTyle2(
                              onTap: () {},
                              smallBlackTextStyle500: titleTextStyle,
                              assetsIcon: "assets/icons/moreIcon.png",
                              title: "More",
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
  final String assetsIcon;
  final String title;
  final void Function()? onTap;
  const CustomListTyle2({
    Key? key,
    required this.smallBlackTextStyle500,
    required this.assetsIcon,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final TextStyle smallBlackTextStyle500;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xffFFFFFF),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListTile(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          tileColor: const Color(0xffF5F5F5),
          contentPadding: const EdgeInsets.only(
            left: 15,
            right: 22,
          ),
          minLeadingWidth: 5,
          onTap: onTap,
          leading: Image.asset(
            assetsIcon.toString(),
          ),
          title: Text(title.toString(), style: smallBlackTextStyle500),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 15,
            color: Color(0xff444242),
          ),
        ),
      ),
    );
  }
}
