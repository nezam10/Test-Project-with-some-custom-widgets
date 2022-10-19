import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutUsScreen extends StatelessWidget {
  AboutUsScreen({super.key});

  final TextStyle whiteTextStyle = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xffFFFFFF));
  final TextStyle blackTextStyle = const TextStyle(
      fontSize: 15, fontWeight: FontWeight.w600, color: Color(0xff555454));
  final TextStyle smallBlackTextStyle = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color(0xff9D9D9D),
      height: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
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
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("About the Caribpay", style: blackTextStyle),
                          const SizedBox(height: 10),
                          Container(
                            height: 185,
                            width: Get.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)),
                            child: Image.asset(
                              "assets/images/about_img.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text("Recived Money By Aron Fince",
                              style: blackTextStyle),
                          const SizedBox(height: 10),
                          Text(
                              "It is a long established fact that a reader wilistracted by the readable content of a page when looking its layout. The point of using Lorem Ipsum is that more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. \n \nIt is a long established fact that a reader wilistracted by the readable content of a page when looking its layout. The point of using Lorem Ipsum is that more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.\n \nIt is a long established fact that a reader wilistracted by the readable content of a page when looking its layout. The point of using Lorem Ipsum is that more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.\n \nIt is a long established fact that a reader wilistracted by the readable content of a page when looking its layout. The point of using Lorem Ipsum is that more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
                              style: smallBlackTextStyle),
                          const SizedBox(height: 10),
                        ],
                      ),
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
