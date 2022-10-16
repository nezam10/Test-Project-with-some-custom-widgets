import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNewCard extends StatelessWidget {
  AddNewCard({super.key});

  TextStyle whiteTextStyle = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xffFFFFFF));
  TextStyle greyTextStyle400 = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff505050));
  TextStyle whiteTextStyleBold = const TextStyle(
      fontSize: 19, fontWeight: FontWeight.w700, color: Color(0xffFFFFFF));
  TextStyle mediumwhiteTextStyle = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xffFFFFFF));
  TextStyle greyTextStyle500 = const TextStyle(
      fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff4D4D4D));

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
                  height: 618,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(18),
                        height: 211,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/card_pay.png"),
                              fit: BoxFit.cover),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Muhammad Zahid", style: whiteTextStyle),
                            const SizedBox(height: 20),
                            Container(
                              alignment: Alignment.center,
                              height: 103,
                              width: Get.width,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/inner_card_pay.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: Text("4000-0040-0043-9876",
                                  style: whiteTextStyleBold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text("VALID\nTHRU",
                                        style: mediumwhiteTextStyle),
                                    const SizedBox(width: 5),
                                    Text("1/34", style: mediumwhiteTextStyle)
                                  ],
                                ),
                                SizedBox(
                                  height: 26,
                                  width: 41,
                                  //color: Colors.red,
                                  child: Image.asset(
                                    "assets/icons/visa.png",
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
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
                            Text("Card Holder", style: greyTextStyle400),
                            const SizedBox(height: 10),
                            // CustomCardTextField
                            CustomCardTextField(
                              hintText: "Muhammad Zahid",
                              textStyle: greyTextStyle500,
                            ),
                            const SizedBox(height: 15),
                            Text("Card Number", style: greyTextStyle400),
                            const SizedBox(height: 10),
                            CustomCardTextField(
                                hintText: "4000-0040-0043-9876",
                                textStyle: greyTextStyle500),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 10),
                                      Text("CVV", style: greyTextStyle400),
                                      const SizedBox(height: 10),
                                      CustomCardTextField(
                                          hintText: "10/23",
                                          textStyle: greyTextStyle500),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 10),
                                      Text("Valid Date",
                                          style: greyTextStyle400),
                                      const SizedBox(height: 10),
                                      CustomCardTextField(
                                          hintText: "xxxx",
                                          textStyle: greyTextStyle500),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 40),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 50,
                                width: Get.width,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: const Color(0xffE19722),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text("Add Card", style: whiteTextStyle),
                              ),
                            )
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
              color: Colors.grey.withOpacity(0.25),
              offset: const Offset(0, 0))
        ]),
    child: child,
  );
}
