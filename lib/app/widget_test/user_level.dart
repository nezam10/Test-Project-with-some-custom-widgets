import 'package:flutter/material.dart';

class UserLevelPage extends StatelessWidget {
  const UserLevelPage({super.key});

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("User Level"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
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
                        Text("You are a Pathao", style: greyTextStyle),
                        const SizedBox(height: 5),
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(text: 'BRONZE', style: blackTextStyle),
                              TextSpan(
                                  text: ' USER', style: mediumBlackTextStyle),
                            ],
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text("POINTS SISTORY  >", style: redTextStyle),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              // card view
              Container(
                height: 100,
                //color: Colors.blue,
                child: GridView.builder(
                  //padding: EdgeInsets.only(right: 8, left: 8),
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 4.0),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(158, 158, 158, 1)
                                .withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: const Offset(1, 1),
                          ),
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: const Offset(-1, -1),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: const CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/icons/help.png"),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text("Bronze"),
                        Text("0 pts"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text("Bronze"),
                        Text("0 pts"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text("Bronze"),
                        Text("0 pts"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text("Bronze"),
                        Text("0 pts"),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                  "Redeeming points won't affect your progress to the next level"),
              const SizedBox(height: 10),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("How it works"),
                      SizedBox(height: 20),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        dense: false,
                        leading: const CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/icons/help.png"),
                        ),
                        title: Text(
                            "Earn points with every eligible ride and order"),
                      ),
                      SizedBox(height: 15),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        dense: false,
                        leading: const CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/icons/help.png"),
                        ),
                        title: Text(
                            "Earn points with every eligible ride and order"),
                      ),
                      SizedBox(height: 15),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        dense: false,
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.red,
                          backgroundImage: AssetImage("assets/icons/help.png"),
                        ),
                        title: Text(
                            "Earn points with every eligible ride and order"),
                      ),
                      SizedBox(height: 15),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        dense: false,
                        leading: const CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/icons/help.png"),
                        ),
                        title: Text(
                            "Earn points with every eligible ride and order"),
                      ),
                      SizedBox(height: 15),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        dense: false,
                        leading: const CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/icons/help.png"),
                        ),
                        title: Text(
                            "Earn points with every eligible ride and order"),
                      ),
                      SizedBox(height: 15),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        dense: false,
                        leading: const CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/icons/help.png"),
                        ),
                        title: Text(
                            "Earn points with every eligible ride and order"),
                      ),
                      SizedBox(height: 15),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        dense: false,
                        leading: const CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/icons/help.png"),
                        ),
                        title: Text(
                            "Earn points with every eligible ride and order"),
                      ),
                      SizedBox(height: 15),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        dense: false,
                        leading: const CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/icons/help.png"),
                        ),
                        title: Text(
                            "Earn points with every eligible ride and order"),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
