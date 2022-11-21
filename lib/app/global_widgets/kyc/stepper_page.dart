import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'kyc_verify.dart';

class StepperPage extends StatefulWidget {
  @override
  _StepperPageState createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  PageController page = PageController(initialPage: 0);
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Kyc Verify'),
        centerTitle: false,
        elevation: 0,
      ),
      body: PageView(
        controller: page,
        scrollDirection: Axis.horizontal,
        pageSnapping: true,
        children: [
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(15),
                //color: Colors.deepOrange,
                child: Column(
                  children: [
                    CreateTextFromFieldWidget(
                      title: "${'Surname'.tr}*",
                      hintText: 'Surname'.tr,
                      //textEditingController: regCon.userNameTextEditCon,
                      onValidator: (val) {
                        if (val!.isEmpty || val == '') return 'Required'.tr;
                        return null;
                      },
                    ),
                    CreateTextFromFieldWidget(
                      title: "${'First Name'.tr}*",
                      hintText: 'First Name'.tr,
                      //textEditingController: regCon.userNameTextEditCon,
                      onValidator: (val) {
                        if (val!.isEmpty || val == '') return 'Required'.tr;
                        return null;
                      },
                    ),
                    CreateTextFromFieldWidget(
                      title: "${'Middle Name'.tr}*",
                      hintText: 'Middle Name'.tr,
                      //textEditingController: regCon.userNameTextEditCon,
                      onValidator: (val) {
                        if (val!.isEmpty || val == '') return 'Required'.tr;
                        return null;
                      },
                    ),
                    CreateTextFromFieldWidget(
                      title: "${'Last Name'.tr}*",
                      hintText: 'Last Name'.tr,
                      //textEditingController: regCon.userNameTextEditCon,
                      onValidator: (val) {
                        if (val!.isEmpty || val == '') return 'Required'.tr;
                        return null;
                      },
                    ),
                    CreateTextFromFieldWidget(
                      title: "${'Middle Name'.tr}*",
                      hintText: 'Middle Name'.tr,
                      //textEditingController: regCon.userNameTextEditCon,
                      onValidator: (val) {
                        if (val!.isEmpty || val == '') return 'Required'.tr;
                        return null;
                      },
                    ),
                    CreateTextFromFieldWidget(
                      title: "${'Email'.tr}*",
                      hintText: 'Email'.tr,
                      textInputType: TextInputType.emailAddress,
                      //textEditingController: regCon.userNameTextEditCon,
                      onValidator: (val) {
                        if (val!.isEmpty || val == '') return 'Required'.tr;
                        return null;
                      },
                    ),
                    CreateTextFromFieldWidget(
                      title: "${'Phone'.tr}*",
                      hintText: 'Phone'.tr,
                      textInputType: TextInputType.number,
                      //textEditingController: regCon.userNameTextEditCon,
                      onValidator: (val) {
                        if (val!.isEmpty || val == '') return 'Required'.tr;
                        return null;
                      },
                    ),
                    CreateTextFromFieldWidget(
                      title: "${'National Id Issue Country'.tr}*",
                      hintText: 'Bangladesh'.tr,
                      textInputType: TextInputType.text,
                      //textEditingController: regCon.userNameTextEditCon,
                      onValidator: (val) {
                        if (val!.isEmpty || val == '') return 'Required'.tr;
                        return null;
                      },
                    ),
                    CreateTextFromFieldWidget(
                      title: "${'Foreign Id Type'.tr}*",
                      hintText: '2'.tr,
                      textInputType: TextInputType.text,
                      //textEditingController: regCon.userNameTextEditCon,
                      onValidator: (val) {
                        if (val!.isEmpty || val == '') return 'Required'.tr;
                        return null;
                      },
                    ),
                    CreateTextFromFieldWidget(
                      title: "${'Foreign Id'.tr}*",
                      hintText: '12345678'.tr,
                      textInputType: TextInputType.text,
                      //textEditingController: regCon.userNameTextEditCon,
                      onValidator: (val) {
                        if (val!.isEmpty || val == '') return 'Required'.tr;
                        return null;
                      },
                    ),
                    CreateTextFromFieldWidget(
                      title: "${'Date of Birth'.tr}*",
                      hintText: 'Date of Birth'.tr,
                      textInputType: TextInputType.datetime,
                      //textEditingController: regCon.userNameTextEditCon,
                      onValidator: (val) {
                        if (val!.isEmpty || val == '') return 'Required'.tr;
                        return null;
                      },
                    ),
                    CreateTextFromFieldWidget(
                      title: "${'Gender'.tr}*",
                      hintText: 'Gender'.tr,
                      //textEditingController: regCon.userNameTextEditCon,
                      onValidator: (val) {
                        if (val!.isEmpty || val == '') return 'Required'.tr;
                        return null;
                      },
                    ),
                    CreateTextFromFieldWidget(
                      title: "${'Marital Status'.tr}*",
                      hintText: 'Marital Status'.tr,
                      //textEditingController: regCon.userNameTextEditCon,
                      onValidator: (val) {
                        if (val!.isEmpty || val == '') return 'Required'.tr;
                        return null;
                      },
                    ),
                    CreateTextFromFieldWidget(
                      title: "${'Residential Phone'.tr}*",
                      hintText: 'Residential Phone'.tr,
                      //textEditingController: regCon.userNameTextEditCon,
                      onValidator: (val) {
                        if (val!.isEmpty || val == '') return 'Required'.tr;
                        return null;
                      },
                    ),
                    CreateTextFromFieldWidget(
                      title: "${'Nationaliey'.tr}*",
                      hintText: 'Nationaliey'.tr,
                      //textEditingController: regCon.userNameTextEditCon,
                      onValidator: (val) {
                        if (val!.isEmpty || val == '') return 'Required'.tr;
                        return null;
                      },
                    ),
                    CreateTextFromFieldWidget(
                      title: "${'Nationaliey'.tr}*",
                      hintText: 'Nationaliey'.tr,
                      //textEditingController: regCon.userNameTextEditCon,
                      onValidator: (val) {
                        if (val!.isEmpty || val == '') return 'Required'.tr;
                        return null;
                      },
                    ),
                  ],
                )),
          ),
          Container(
            child: Center(
                child: Text(
              "Page-2",
              style: TextStyle(color: Colors.white, fontSize: 25),
            )),
            color: Colors.grey,
          ),
          Container(
            child: Center(
                child: Text(
              "Page-3",
              style: TextStyle(color: Colors.white, fontSize: 25),
            )),
            color: Colors.teal,
          ),
          Container(
            child: Center(
                child: Text(
              "Page-4",
              style: TextStyle(color: Colors.white, fontSize: 25),
            )),
            color: Colors.green,
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.list),
      //   onPressed: switchStepsType,
      // ),
    );
  }
}

Widget CreateBoxShap(
    {required Widget child, Color color = Colors.white, double padding = 10}) {
  return Container(
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

Widget TitleTextWidget({required String text}) {
  return Text(
    text.tr,
    style: Get.textTheme.caption!,
  );
}

//
class CreateTextFromFieldWidget extends StatelessWidget {
  const CreateTextFromFieldWidget(
      {super.key,
      required this.title,
      required this.hintText,
      this.textEditingController,
      this.textInputType,
      this.iconData,
      this.horizontalPading,
      this.onValidator,
      this.readOnly,
      this.onTap,
      this.focusNode});
  final String title;
  final String hintText;
  final TextEditingController? textEditingController;
  final TextInputType? textInputType;
  final IconData? iconData;
  final double? horizontalPading;
  final dynamic onValidator;
  final bool? readOnly;
  final void Function()? onTap;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    TextStyle hintTextStyle = TextStyle(
        fontWeight: FontWeight.w400, fontSize: 16, color: HexColor('#878383'));
    TextStyle inputTextStyle = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        TitleTextWidget(
          text: title,
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: textEditingController,
          keyboardType: textInputType ?? TextInputType.text,
          validator: onValidator,
          style: inputTextStyle,
          readOnly: readOnly ?? false,
          onTap: onTap ?? () {},
          focusNode: focusNode,
          decoration: InputDecoration(
            filled: true,
            // isDense: true,

            prefixIcon: iconData == null
                ? null
                : Icon(
                    iconData,
                    color: Get.theme.primaryColor,
                    size: 22,
                  ),
            // contentPadding:
            //     const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            border: InputBorder.none,
            hintText: hintText.tr,
            hintStyle: hintTextStyle,
            // fillColor: Colors.white,
            errorStyle: TextStyle(color: Colors.red.shade500, fontSize: 12),
            hoverColor: Colors.white,
            enabledBorder:
                const OutlineInputBorder(borderSide: BorderSide.none),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green, width: 1)),
            focusedErrorBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.red.withOpacity(0.60), width: 1)),
          ),
        ),
      ],
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
