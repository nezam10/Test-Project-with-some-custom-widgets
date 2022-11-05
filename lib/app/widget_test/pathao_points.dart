import 'package:flutter/material.dart';

class PathoPointsPage extends StatefulWidget {
  const PathoPointsPage({super.key});

  @override
  State<PathoPointsPage> createState() => _PathoPointsPageState();
}

class _PathoPointsPageState extends State<PathoPointsPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(vsync: this, length: 2);
    TextStyle blackTextStyle = const TextStyle(
        fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xff151313));
    TextStyle mediumBlackTextStyle = const TextStyle(
        fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff151313));
    TextStyle greyTextStyle = const TextStyle(
        fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff6A6A6A));
    TextStyle redTextStyle = const TextStyle(
        fontSize: 25, fontWeight: FontWeight.w600, color: Color(0xffF5001B));
    TextStyle smallredTextStyle = const TextStyle(
        fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xffF5001B));
    return Scaffold(
      appBar: AppBar(
        title: Text("Pathao Points"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Available Points"),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: Text("Bronze", style: smallredTextStyle),
                      )
                    ],
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: '347', style: redTextStyle),
                        TextSpan(text: ' pts', style: smallredTextStyle),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            // card view
            const Text(
                "Use Pathao to earn more points, redeem exciting deals and enjoy excluslve benefits."),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.white,
                        height: 40,
                        width: 30,
                        child: Text("Level Details", style: blackTextStyle),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Card(
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.white,
                        height: 40,
                        width: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.qr_code_scanner_outlined,
                                size: 15, color: Colors.red),
                            Text("Level Details", style: smallredTextStyle),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: 41,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: TabBar(
                    controller: tabController,
                    labelColor: Colors.red,
                    unselectedLabelColor: Colors.black54,
                    indicatorColor: Colors.red,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    tabs: const [
                      Tab(text: "BENEFITS"),
                      Tab(text: "DEALS"),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15, bottom: 15),
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      BenefitsTab(),
                      Container(
                        //height: 200,
                        color: Colors.blue,
                      ),

                      // QuoteMarketTab(),
                      // QuoteTimeSalesTab(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BenefitsTab extends StatelessWidget {
  const BenefitsTab({super.key});
  final TextStyle blackTextStyle = const TextStyle(
      fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xff151313));
  final TextStyle mediumBlackTextStyle = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff151313));
  final TextStyle greyTextStyle = const TextStyle(
      fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff6A6A6A));
  final TextStyle redTextStyle = const TextStyle(
      fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xffF5001B));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Card(
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.white,
                        height: 40,
                        width: 30,
                        child: Text("All", style: blackTextStyle),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Card(
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.white,
                        height: 40,
                        width: 30,
                        child: Text("Level Details", style: blackTextStyle),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              flex: 2,
              child: Card(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  height: 40,
                  width: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Dhaka"),
                      Icon(Icons.keyboard_arrow_down,
                          size: 18, color: Colors.black),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        ListView.builder(
          itemCount: 50,
          //physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                dense: false,
                leading: const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/icons/help.png"),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("BASECAMP", style: blackTextStyle),
                      const SizedBox(height: 5),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Up-To 20% Off', style: blackTextStyle),
                            TextSpan(text: ' Activity', style: greyTextStyle),
                          ],
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text("61 Days Left", style: redTextStyle),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
