import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivacyNoticeScreen extends StatelessWidget {
  PrivacyNoticeScreen({super.key});

  final TextStyle blackTextStyle = const TextStyle(
      fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xff555454));
  final TextStyle smallBlackTextStyle = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color(0xff9D9D9D),
      height: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Privacy Notice"),
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
                      itemCount: privacyNoticeList.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Theme(
                              data: Get.theme
                                  .copyWith(dividerColor: Colors.transparent),
                              child: ExpansionTile(
                                tilePadding: EdgeInsets.zero,
                                textColor: Colors.transparent,
                                title: Text(
                                  privacyNoticeList[index].title.toString(),
                                  style: blackTextStyle,
                                ),
                                children: [
                                  Container(
                                    child: Text(
                                      privacyNoticeList[index]
                                          .subtitle
                                          .toString(),
                                      style: smallBlackTextStyle,
                                    ),
                                  )
                                ],
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

class PrivacyNoticeModel {
  int id;
  String? title;
  String? subtitle;
  PrivacyNoticeModel({required this.id, this.title, this.subtitle});
}

List<PrivacyNoticeModel> privacyNoticeList = [
  PrivacyNoticeModel(
    id: 1,
    title: "How do i use gbank to pay?",
    subtitle:
        "It is a long established fact that a reader wilistracted by the readable content of a page when looking its layout. The point of using Lorem Ipsum is that more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
  ),
  PrivacyNoticeModel(
    id: 2,
    title: "What methods of payment does gbank accept",
    subtitle:
        "It is a long established fact that a reader wilistracted by the readable content of a page when looking its layout. The point of using Lorem Ipsum is that more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
  ),
  PrivacyNoticeModel(
    id: 3,
    title: "How do i place a cancellation requst",
    subtitle:
        "It is a long established fact that a reader wilistracted by the readable content of a page when looking its layout. The point of using Lorem Ipsum is that more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
  ),
  PrivacyNoticeModel(
    id: 4,
    title: "How do i place a cancellation requst",
    subtitle:
        "It is a long established fact that a reader wilistracted by the readable content of a page when looking its layout. The point of using Lorem Ipsum is that more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
  ),
  PrivacyNoticeModel(
    id: 5,
    title: "How do i place a cancellation requst",
    subtitle:
        "It is a long established fact that a reader wilistracted by the readable content of a page when looking its layout. The point of using Lorem Ipsum is that more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
  ),
];
