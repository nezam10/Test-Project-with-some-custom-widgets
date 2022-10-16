import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCardView extends StatelessWidget {
  CustomCardView({super.key});

  TextStyle blackTextStyle = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff151313));
  TextStyle normalBlackTextStyle = const TextStyle(
      fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff6A6A6A));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card View"),
      ),
      body: Card(
        child: SizedBox(
          height: Get.height * 0.8,
          width: Get.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 15),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: const Color(0xffF1F1F1),
                      width: 1,
                    ),
                  ),
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/images/alert.png"),
                    ),
                    title: Text("William", style: blackTextStyle),
                    subtitle: Text("093823726322", style: normalBlackTextStyle),
                  ),
                ),
              ),
              const Divider(
                height: 20,
                color: Color(0xffF1F1F1),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: Container(
                  //height: 250,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: const Color(0xffF1F1F1),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                right: BorderSide(
                                    width: 1, color: Color(0xffF1F1F1)),
                              )),
                              child: BalancView(
                                title: "Total",
                                balance: "\$1543.78",
                                subBlance: "\$1500.00+\$43.78",
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: BalancView(
                              title: "New Balance",
                              balance: "\$1543.78",
                              //subBlance: "\$1500.00+\$43.78",
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 1,
                        color: const Color(0xffF1F1F1),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                      width: 1, color: Color(0xffF1F1F1)),
                                ),
                              ),
                              child: BalancView(
                                title: "Currency",
                                balance: "USD",
                                //subBlance: "\$1500.00+\$43.78",
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: BalancView(
                              title: "Fee",
                              balance: "\$10.00",
                              //subBlance: "\$1500.00+\$43.78",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//
class BalancView extends StatelessWidget {
  final Color? rowColor;
  final String? title;
  final String? balance;
  final String? subBlance;
  BalancView({
    Key? key,
    this.rowColor,
    this.title,
    this.balance,
    this.subBlance,
  }) : super(key: key);

  TextStyle midiumBlackTextStyle = const TextStyle(
    fontFamily: 'Roboto',
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );
  TextStyle smallBlackTextStyle = const TextStyle(
    fontFamily: 'Roboto',
    color: Color(0xff575757),
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 50,
      color: rowColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              margin: const EdgeInsets.all(15),
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title.toString(),
                    style: smallBlackTextStyle,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    balance.toString(),
                    style: midiumBlackTextStyle,
                  ),
                  const SizedBox(height: 2),
                  Visibility(
                    visible: subBlance != null,
                    child: Text(
                      subBlance ?? "",
                      style: smallBlackTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey.withOpacity(0.2),
                        //     spreadRadius: 3,
                        //     blurRadius: 5,
                        //     offset: const Offset(0, -1),
                        //   ),
                        // ],
