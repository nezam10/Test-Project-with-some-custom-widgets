import 'package:flutter/material.dart';

class CustomListTyle extends StatelessWidget {
  CustomListTyle({super.key});

  TextStyle blackTextStyle = const TextStyle(
      fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xff151313));
  TextStyle greyTextStyle = const TextStyle(
      fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff6A6A6A));
  TextStyle redTextStyle = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xffF5001B));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListTyle"),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              dense: false,
              leading: const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/alert.png"),
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("23 Jun 2022, 07:34 PM", style: greyTextStyle),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("XCD 1.00", style: redTextStyle),
                      const Icon(
                        Icons.arrow_downward,
                        size: 15,
                        color: Color(0xffF5001B),
                      )
                    ],
                  ),
                ],
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mobile Top_Up", style: blackTextStyle),
                    const SizedBox(height: 5),
                    Text("01982736333", style: greyTextStyle),
                    const SizedBox(height: 2),
                    Text("Trans : 973jh43g333", style: greyTextStyle),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
