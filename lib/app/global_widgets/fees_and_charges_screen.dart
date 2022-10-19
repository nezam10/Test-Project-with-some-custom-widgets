import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeesAndChargesScreen extends StatelessWidget {
  FeesAndChargesScreen({super.key});

  final TextStyle blackTextStyle = const TextStyle(
      fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xff555454));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fees and Charges"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    height: 713,
                    width: Get.width,
                    child: ListView.builder(
                      itemCount: feesAndChargesList.length,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 15, bottom: 15),
                              child: Text(
                                feesAndChargesList[index],
                                style: blackTextStyle,
                              ),
                            ),
                            Divider()
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List feesAndChargesList = [
  "How do i use gbank to pay?",
  "What methods of payment does gbank accept",
  "How do i place a cancellation requst",
  "How do i place a cancellation requst",
  "How do i place a cancellation requst",
];
