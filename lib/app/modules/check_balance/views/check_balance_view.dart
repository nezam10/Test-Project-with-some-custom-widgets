import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:test_project/app/global_widgets/add_new_card.dart';
import 'package:test_project/app/global_widgets/add_withdraw.dart';
import 'package:test_project/app/global_widgets/card_view.dart';
import 'package:test_project/app/global_widgets/custom_card_view.dart';
import 'package:test_project/app/global_widgets/custom_listtyle.dart';
import 'package:test_project/app/global_widgets/custom_scroll.dart';
import 'package:test_project/app/global_widgets/email_otp.dart';
import 'package:test_project/app/global_widgets/flutter_animated.dart';
import 'package:test_project/app/global_widgets/menu_screen.dart';
import 'package:test_project/app/global_widgets/mobile_number_reload.dart';
import 'package:test_project/app/global_widgets/settings.dart';
import 'package:test_project/app/global_widgets/test_widgets/custom_list.dart';
import 'package:test_project/app/global_widgets/test_widgets/get_mac_address.dart';
import 'package:test_project/app/global_widgets/test_widgets/make_payment.dart';
import 'package:test_project/app/global_widgets/test_widgets/paypal_payment.dart';
import 'package:test_project/app/global_widgets/test_widgets/test_paypal.dart';
import 'package:test_project/app/global_widgets/transfer_screen.dart';
import 'package:test_project/app/widget_test/pathao_points.dart';
import 'package:test_project/app/widget_test/user_level.dart';

import '../../../global_widgets/test_widgets/bottom_navbar.dart';
import '../controllers/check_balance_controller.dart';
import 'custom_appbar.dart';

class CheckBalanceView extends GetView<CheckBalanceController> {
  CheckBalanceView({Key? key}) : super(key: key);

  final blackTextStyleBold = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xff212121));
  final smallBlackTextStyleBold = const TextStyle(
      fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff212121));

  final yellowTextStyleBold = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xffF7AA31));
  // check ip address
  Future printIps() async {
    for (var interface in await NetworkInterface.list()) {
      print('== Interface: ${interface.name} ==');
      for (var addr in interface.addresses) {
        print(
            '${addr.address} ${addr.host} ${addr.isLoopback} ${addr.rawAddress} ${addr.type.name}');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80), child: CustomAppBar()),
        body: Center(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 206,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Explore Services",
                                  style: blackTextStyleBold),
                              Text("Explore Services",
                                  style: yellowTextStyleBold)
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, top: 15, bottom: 15, right: 10),
                              child: Container(
                                height: 134,
                                width: 132,
                                decoration: BoxDecoration(
                                  color: const Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 5,
                                      blurRadius: 5,
                                      offset: const Offset(0, -1),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          topRight: Radius.circular(5)),
                                      child: Container(
                                        height: 80,
                                        width: 132,
                                        color: Colors.yellow,
                                        child: Image.network(
                                          "https://img.freepik.com/free-vector/abstract-website-banner-with-modern-shapes_1361-1738.jpg?w=2000",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "15% Cashback",
                                            style: blackTextStyleBold,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                          ),
                                          const SizedBox(height: 3),
                                          Text("15% Cashback",
                                              style: smallBlackTextStyleBold,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              /* :::::::::::::::::::::::: Custom Dialog :::::::::::::::::::::::: */
              ElevatedButton(
                child: Text('Show Dialog'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  onPrimary: Colors.white,
                  shadowColor: Colors.tealAccent,
                  textStyle: TextStyle(
                    fontSize: 18,
                  ),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  minimumSize: Size(120, 50),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    barrierColor: Colors.black.withOpacity(0.7),
                    builder: (BuildContext context) {
                      return AlertDialog(
                        titlePadding: EdgeInsets.zero,
                        title: Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            onPressed: () => Get.back(),
                            icon: const Icon(Icons.close),
                            color: const Color(0xffF5001B),
                          ),
                        ),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0))),
                        backgroundColor: const Color(0xffFFFFFF),
                        content: SizedBox(
                          height: Get.height * 0.3,
                          width: Get.width * 0.9,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  //
                                  // color: Colors.red,
                                  height: Get.height * 0.18,
                                  width: Get.width * 0.40,
                                  child: Lottie.asset(
                                      "assets/animations/alert_success.json")),
                              const SizedBox(height: 20),
                              RichText(
                                text: const TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Fund added',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff505050),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' Successfully',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff00A825),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    maximumSize: const Size(166, 50),
                                    backgroundColor: const Color(0xffE19722),
                                    textStyle: const TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                                child: const Text('Go to Home'),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(height: 20),
              /* :::::::::::::::::::::::: Custom card :::::::::::::::::::::::: */
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => CustomCardView());
                  },
                  child: const Text("Card View")),
              const SizedBox(height: 20),
              /* :::::::::::::::::::::::: Add New card :::::::::::::::::::::::: */
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => AddNewCard());
                  },
                  child: const Text("Add New Card")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => AddWithdraw());
                  },
                  child: const Text("Add Withdraw")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => CustomListTyle());
                  },
                  child: const Text("ListTyle")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => MobileNumberReload());
                  },
                  child: const Text("MobileNumberReload")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => MenuScreen());
                  },
                  child: const Text("MenuScreen")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => TransferScreen());
                  },
                  child: const Text("Transfer Screen")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => CardView());
                  },
                  child: const Text("Card Screen")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => SettingsScreen());
                  },
                  child: const Text("ListTyle")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => EmailOtpScreen());
                  },
                  child: const Text("ListTyle")),
              ElevatedButton(
                  onPressed: () {
                    printIps();
                  },
                  child: const Text("printIps")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => FlutterAnimated());
                  },
                  child: const Text("Flutter Animated")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => CustomScroll());
                  },
                  child: const Text("Scroll")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => CusmtomBottomBar());
                  },
                  child: const Text("Test Widgets")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => TestWidget());
                  },
                  child: const Text("Test Widgets")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => GetMacAddress());
                  },
                  child: const Text("Get Wifi Mac Address")),
              ElevatedButton(
                  onPressed: () {
<<<<<<< HEAD
                    Get.to(() => UserLevelPage());
                  },
                  child: const Text("user level")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => PathoPointsPage());
                  },
                  child: const Text("Pathao points")),
=======
                    Get.to(() => MakePayment());
                  },
                  child: const Text("PayPal")),
              //
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => TestWidget1());
                  },
                  child: const Text("Test Widget")),
>>>>>>> 10e918c1582ebcbe72c85bc2c61f9250a31bde6d
              // SizedBox(height: 20),
              // Card(
              //   child: Container(
              //     height: 150,
              //     width: 250,
              //     decoration: BoxDecoration(
              //       color: Colors.blue,
              //       gradient: LinearGradient(
              //         begin: Alignment(0.0, 0.0),
              //         end: Alignment(0.0, 2),
              //         colors: <Color>[
              //           Colors.blue,
              //           Colors.white.withOpacity(0.3),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        )),
      ),
    );
  }
}
