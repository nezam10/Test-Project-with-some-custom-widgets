import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CustomScroll extends StatefulWidget {
  CustomScroll({super.key});

  @override
  State<CustomScroll> createState() => _CustomScrollState();
}

class _CustomScrollState extends State<CustomScroll> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ScrollController myController = ScrollController();

    final clickScroll = GlobalKey();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Scroll"),
        actions: [
          ElevatedButton(
            onPressed: () {
              clickScroll.currentState!.activate();
            },
            child: const Text("Click"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: myController,
        child: Column(
          children: [
            Container(
              //key: clickScroll,
              height: 200,
              width: Get.width,
              color: Colors.green,
            ),
            const SizedBox(height: 10),
            Container(
              key: clickScroll,
              height: 200,
              width: Get.width,
              color: Colors.red,
            ),
            const SizedBox(height: 10),
            Container(
              height: 200,
              width: Get.width,
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            Container(
              height: 100,
              width: Get.width,
              color: Colors.yellow,
            ),
            const SizedBox(height: 10),
            Container(
              height: 100,
              width: Get.width,
              color: Colors.cyan,
            ),
            const SizedBox(height: 10),
            Container(
              height: 100,
              width: Get.width,
              color: Colors.amber,
            ),
            const SizedBox(height: 10),
            Container(
              height: 100,
              width: Get.width,
              color: Colors.blue,
            ),
            const SizedBox(height: 10),
            Container(
              height: 100,
              width: Get.width,
              color: Colors.yellow,
            ),
            const SizedBox(height: 10),
            Container(
              height: 100,
              width: Get.width,
              color: Colors.cyan,
            ),
            const SizedBox(height: 10),
            Container(
              height: 100,
              width: Get.width,
              color: Colors.amber,
            ),
            const SizedBox(height: 10),
            Container(
              height: 100,
              width: Get.width,
              color: Colors.blue,
            ),
            const SizedBox(height: 10),
            Container(
              height: 100,
              width: Get.width,
              color: Colors.yellow,
            ),
            const SizedBox(height: 10),
            Container(
              height: 100,
              width: Get.width,
              color: Colors.cyan,
            ),
            const SizedBox(height: 10),
            Container(
              height: 100,
              width: Get.width,
              color: Colors.amber,
            ),
            const SizedBox(height: 10),
            Container(
              height: 100,
              width: Get.width,
              color: Colors.blue,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

Widget CreateBoxShap(
    {required Widget child,
    Color color = Colors.white,
    double padding = 10,
    double? height}) {
  return Container(
    height: height,
    padding: EdgeInsets.symmetric(horizontal: padding),
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              blurRadius: 5,
              color: Colors.white.withOpacity(0.25),
              offset: const Offset(0, 0))
        ]),
    child: child,
  );
}

// onWillPop: () async {
//         final shouldPop = await showDialog<bool>(
//           context: context,
//           builder: (context) {
//             return AlertDialog(
//               title: const Text('Do you want to go back?'),
//               actionsAlignment: MainAxisAlignment.spaceBetween,
//               actions: [
//                 TextButton(
//                   onPressed: () {
//                     Navigator.pop(context, true);
//                   },
//                   child: const Text('Yes'),
//                 ),
//                 TextButton(
//                   onPressed: () {
//                     Navigator.pop(context, false);
//                   },
//                   child: const Text('No'),
//                 ),
//               ],
//             );
//           },
//         );
//         return shouldPop!;
//       },

// number code input

// IntlPhoneField(
//                       dropdownIconPosition: IconPosition.leading,
//                       decoration: const InputDecoration(
//                         filled: true,
//                         fillColor: Color(0xffF3F5F7),
//                         labelText: '9835-2626-426',
//                         border: OutlineInputBorder(
//                           borderSide: BorderSide(),
//                         ),
//                       ),
//                       initialCountryCode: 'BD',
//                       onChanged: (phone) {
//                         print(phone.completeNumber);
//                       },
//                     ),
