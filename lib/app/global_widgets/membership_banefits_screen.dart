import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/app/global_widgets/proof_of_residency.dart';

class MembershipBenefitsScreen extends StatelessWidget {
  MembershipBenefitsScreen({super.key});

  TextStyle blackTextStyle = const TextStyle(
      fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xff555454));

  List<String> membershipList = [
    "how do i use gbank to pay?",
    "what methods of payment does gbank accept",
    "How do i place a cancellation reques",
    "How do i place a cancellation reques",
    "How do i place a cancellation reques",
  ];

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
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: membershipList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(membershipList[index],
                                  style: blackTextStyle),
                              const Divider(
                                height: 50,
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
