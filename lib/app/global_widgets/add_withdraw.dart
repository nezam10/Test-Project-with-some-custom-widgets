import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddWithdraw extends StatelessWidget {
  AddWithdraw({super.key});

  TextStyle whiteTextStyle = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xffFFFFFF));
  TextStyle greyTextStyle400 = const TextStyle(
      fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xffD4D4D4));
  TextStyle blackTextStyleBold = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff505050));
  TextStyle mediumwhiteTextStyle = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xffFFFFFF));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Card"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                ),
                child: SizedBox(
                  height: 713,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 50,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  color: const Color(0xffE19722),
                                  border: Border(
                                    right: BorderSide(
                                        width: 1, color: Color(0xffF1F1F1)),
                                  ),
                                ),
                                child: Text("Bank", style: whiteTextStyle),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 50,
                                alignment: Alignment.center,
                                color: const Color(0xffE19722),
                                child: Text("Paypal", style: whiteTextStyle),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Card Holder*", style: blackTextStyleBold),
                            const SizedBox(height: 10),
                            CreateBoxShap(
                              color: const Color(0xffF5F5F5),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelStyle: greyTextStyle400,
                                    hintStyle: greyTextStyle400,
                                    hintText: "E.g Johan Doe"),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Text("Bank Name*", style: blackTextStyleBold),
                            const SizedBox(height: 10),
                            CreateBoxShap(
                              color: const Color(0xffF5F5F5),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelStyle: greyTextStyle400,
                                    hintStyle: greyTextStyle400,
                                    hintText: "Enter Bank Name"),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Text("Account/IBAN Number*",
                                style: blackTextStyleBold),
                            const SizedBox(height: 10),
                            CreateBoxShap(
                              color: const Color(0xffF5F5F5),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelStyle: greyTextStyle400,
                                    hintStyle: greyTextStyle400,
                                    hintText: "E.g 123456778"),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Text("Routing Number*", style: blackTextStyleBold),
                            const SizedBox(height: 10),
                            CreateBoxShap(
                              color: const Color(0xffF5F5F5),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelStyle: greyTextStyle400,
                                    hintStyle: greyTextStyle400,
                                    hintText: "E.g A21324242"),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Text("Account Type*", style: blackTextStyleBold),
                            const SizedBox(height: 10),
                            CreateBoxShap(
                              color: const Color(0xffF5F5F5),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelStyle: greyTextStyle400,
                                    hintStyle: greyTextStyle400,
                                    hintText: "E.g Checking or Saving"),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Text("Wire No.", style: blackTextStyleBold),
                            const SizedBox(height: 10),
                            CreateBoxShap(
                              color: const Color(0xffF5F5F5),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelStyle: greyTextStyle400,
                                    hintStyle: greyTextStyle400,
                                    hintText: "E.g A32243"),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Text("SWIFT/BIC Code*", style: blackTextStyleBold),
                            const SizedBox(height: 10),
                            CreateBoxShap(
                              color: const Color(0xffF5F5F5),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelStyle: greyTextStyle400,
                                    hintStyle: greyTextStyle400,
                                    hintText: "E.g A2323444"),
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
    );
  }
}

class CustomCardTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextStyle textStyle;
  final TextInputType? keyboardType;
  const CustomCardTextField({
    Key? key,
    required this.hintText,
    required this.textStyle,
    this.controller,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: Get.width,
      decoration: BoxDecoration(
        color: const Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 10),
        child: TextField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
              border: InputBorder.none,
              labelStyle: textStyle,
              hintStyle: textStyle,
              hintText: hintText),
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
