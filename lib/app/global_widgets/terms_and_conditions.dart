import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsAndConditions extends StatelessWidget {
  TermsAndConditions({super.key});

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
        title: const Text("Terms And Conditions"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 713,
                        width: Get.width,
                        child: ListView.builder(
                          itemCount: termsAndConditionList.length,
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "${termsAndConditionList[index].id}. ${termsAndConditionList[index].title}",
                                    style: blackTextStyle),
                                const SizedBox(height: 10),
                                Text(
                                    termsAndConditionList[index]
                                        .subtitle
                                        .toString(),
                                    style: smallBlackTextStyle),
                                const SizedBox(height: 10),
                              ],
                            );
                          },
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                //Get.to(() => UpdatePasswordScreen2());
                              },
                              child: Container(
                                height: 50,
                                width: Get.width * 0.4,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: const Color(0xff002739),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "Done",
                                  style: whiteTextStyle,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            InkWell(
                              onTap: () {
                                //Get.to(() => UpdatePasswordScreen2());
                              },
                              child: Container(
                                height: 50,
                                width: Get.width * 0.4,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: const Color(0xffE19722),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "Accept",
                                  style: whiteTextStyle,
                                ),
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
          ],
        ),
      ),
    );
  }
}

class TermsAndConditionModel {
  int id;
  String? title;
  String? subtitle;
  TermsAndConditionModel({required this.id, this.title, this.subtitle});
}

List<TermsAndConditionModel> termsAndConditionList = [
  TermsAndConditionModel(
      id: 1,
      title: "Terms",
      subtitle:
          "It is a long established fact that a reader wilistracted by the readable content of a page when looking its layout. The point of using Lorem Ipsum is that more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."),
  TermsAndConditionModel(
      id: 2,
      title: "Use License",
      subtitle:
          "It is a long established fact that a reader wilistracted by the readable content of a page when looking its layout. The point of using Lorem Ipsum is that more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."),
  TermsAndConditionModel(
      id: 3,
      title: "How do i place a cancellation requst",
      subtitle:
          "It is a long established fact that a reader wilistracted by the readable content of a page when looking its layout. The point of using Lorem Ipsum is that more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.The point of using Lorem Ipsum is that more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."),
];
