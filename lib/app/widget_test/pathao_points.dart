import 'package:flutter/material.dart';

class PathoPointsPage extends StatelessWidget {
  const PathoPointsPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle blackTextStyle = const TextStyle(
        fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xff151313));
    TextStyle mediumBlackTextStyle = const TextStyle(
        fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff151313));
    TextStyle greyTextStyle = const TextStyle(
        fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff6A6A6A));
    TextStyle redTextStyle = const TextStyle(
        fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xffF5001B));
    return Scaffold(
      appBar: AppBar(
        title: Text("Pathao Points"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Available Points"),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Bronze"),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            // card view
            Expanded(
              child: GridView.builder(
                //padding: EdgeInsets.only(right: 8, left: 8),
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(2),
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          color: Colors.red,
                        ),
                        Text("Bronze"),
                        Text("0 pts"),
                      ],
                    ),
                  );
                },
              ),
            ),
            Text(
                "Redeeming points won't affect your progress to the next level"),
            const SizedBox(height: 10),
            Container(
              color: Colors.blue,
              child: Column(
                children: [
                  Text("How it works"),
                  ListTile(
                    title:
                        Text("Earn points with every eligible ride end order"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
