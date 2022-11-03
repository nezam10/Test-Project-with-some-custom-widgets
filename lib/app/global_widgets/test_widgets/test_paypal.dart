import 'package:flutter/material.dart';

class TestWidget1 extends StatelessWidget {
  const TestWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ExpansionTile(
              title: Container(
                child: Text(
                  "Test",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.black,
              ),
              children: <Widget>[
                new Container(
                  height: 60.0,
                  margin: const EdgeInsets.only(
                      top: 10.0, left: 10.0, right: 10.0, bottom: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: new BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
                new Container(
                  height: 60.0,
                  margin: const EdgeInsets.only(
                      top: 10.0, left: 10.0, right: 10.0, bottom: 0.0),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: new BorderRadius.all(Radius.circular(5.0)),
                  ),
                )
              ],
              backgroundColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
