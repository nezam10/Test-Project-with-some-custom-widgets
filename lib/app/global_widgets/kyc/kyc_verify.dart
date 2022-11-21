import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KycVerify extends StatefulWidget {
  @override
  _KycVerifyState createState() => _KycVerifyState();
}

class _KycVerifyState extends State<KycVerify> {
  final GlobalKey<FormState> userGlobalkey = GlobalKey<FormState>();
  final GlobalKey<FormState> presentGlobalkey = GlobalKey<FormState>();
  final GlobalKey<FormState> shippingGlobalkey = GlobalKey<FormState>();
  PageController pageController = PageController(initialPage: 0);
  int pageIndex = 0;

  void pageChanged(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  void clickTapped(int index) {
    setState(() {
      pageIndex = index;
      pageController.animateToPage(index,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

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
        controller: pageController,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        pageSnapping: true,
        onPageChanged: (index) {
          pageChanged(index);
        },
        children: [
          // first pageView
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(15),
                //color: Colors.deepOrange,
                child: Form(
                  key: userGlobalkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "User Details",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
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
                      const SizedBox(height: 15),
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {
                            if (userGlobalkey.currentState!.validate()) {
                              clickTapped(1);
                            }
                          },
                          child: Container(
                            height: 50,
                            width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xffE19722),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              "Next",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          // secound pageView
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(15),
                //color: Colors.deepOrange,
                child: Form(
                  key: presentGlobalkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Present Address",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      CreateTextFromFieldWidget(
                        title: "${'Employer Name'.tr}*",
                        hintText: 'Sabbir'.tr,
                        //textEditingController: regCon.userNameTextEditCon,
                        onValidator: (val) {
                          if (val!.isEmpty || val == '') return 'Required'.tr;
                          return null;
                        },
                      ),
                      CreateTextFromFieldWidget(
                        title: "${'Employer Address'.tr}*",
                        hintText: 'Dhaka'.tr,
                        //textEditingController: regCon.userNameTextEditCon,
                        onValidator: (val) {
                          if (val!.isEmpty || val == '') return 'Required'.tr;
                          return null;
                        },
                      ),
                      CreateTextFromFieldWidget(
                        title: "${'Employer Telephone'.tr}*",
                        hintText: '015000000000'.tr,
                        //textEditingController: regCon.userNameTextEditCon,
                        onValidator: (val) {
                          if (val!.isEmpty || val == '') return 'Required'.tr;
                          return null;
                        },
                      ),
                      CreateTextFromFieldWidget(
                        title: "${'Occupation'.tr}*",
                        hintText: 'Occupation'.tr,
                        //textEditingController: regCon.userNameTextEditCon,
                        onValidator: (val) {
                          if (val!.isEmpty || val == '') return 'Required'.tr;
                          return null;
                        },
                      ),
                      CreateTextFromFieldWidget(
                        title: "${'Country'.tr}*",
                        hintText: 'Bangladesh'.tr,
                        textInputType: TextInputType.text,
                        //textEditingController: regCon.userNameTextEditCon,
                        onValidator: (val) {
                          if (val!.isEmpty || val == '') return 'Required'.tr;
                          return null;
                        },
                      ),
                      CreateTextFromFieldWidget(
                        title: "${'City'.tr}*",
                        hintText: 'Dhaka'.tr,
                        textInputType: TextInputType.text,
                        //textEditingController: regCon.userNameTextEditCon,
                        onValidator: (val) {
                          if (val!.isEmpty || val == '') return 'Required'.tr;
                          return null;
                        },
                      ),
                      CreateTextFromFieldWidget(
                        title: "${'State'.tr}*",
                        hintText: 'Dhaka'.tr,
                        textInputType: TextInputType.text,
                        //textEditingController: regCon.userNameTextEditCon,
                        onValidator: (val) {
                          if (val!.isEmpty || val == '') return 'Required'.tr;
                          return null;
                        },
                      ),
                      CreateTextFromFieldWidget(
                        title: "${'Zip Code'.tr}*",
                        hintText: '1216'.tr,
                        textInputType: TextInputType.text,
                        //textEditingController: regCon.userNameTextEditCon,
                        onValidator: (val) {
                          if (val!.isEmpty || val == '') return 'Required'.tr;
                          return null;
                        },
                      ),
                      CreateTextFromFieldWidget(
                        title: "${'Address 1'.tr}*",
                        hintText: 'Mirpur'.tr,
                        textInputType: TextInputType.text,
                        //textEditingController: regCon.userNameTextEditCon,
                        onValidator: (val) {
                          if (val!.isEmpty || val == '') return 'Required'.tr;
                          return null;
                        },
                      ),
                      CreateTextFromFieldWidget(
                        title: "${'Address 2'.tr}*",
                        hintText: 'Dhaka'.tr,
                        textInputType: TextInputType.text,
                        //textEditingController: regCon.userNameTextEditCon,
                        onValidator: (val) {
                          if (val!.isEmpty || val == '') return 'Required'.tr;
                          return null;
                        },
                      ),
                      CreateTextFromFieldWidget(
                        title: "${'Address 3'.tr}*",
                        hintText: 'Bangladesh'.tr,
                        //textEditingController: regCon.userNameTextEditCon,
                        onValidator: (val) {
                          if (val!.isEmpty || val == '') return 'Required'.tr;
                          return null;
                        },
                      ),
                      CreateTextFromFieldWidget(
                        title: "${'Address Proof File Type'.tr}*",
                        hintText: '2'.tr,
                        //textEditingController: regCon.userNameTextEditCon,
                        onValidator: (val) {
                          if (val!.isEmpty || val == '') return 'Required'.tr;
                          return null;
                        },
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              clickTapped(0);
                            },
                            child: Container(
                              height: 50,
                              width: 80,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xffE19722),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                "Back",
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              clickTapped(2);
                            },
                            child: Container(
                              height: 50,
                              width: 80,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xffE19722),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                "Next",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
          // third pageView
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(15),
                //color: Colors.deepOrange,
                child: Form(
                  key: shippingGlobalkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Shipping Address",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      CreateTextFromFieldWidget(
                        title: "${'Country'.tr}*",
                        hintText: 'BDG'.tr,
                        //textEditingController: regCon.userNameTextEditCon,
                        onValidator: (val) {
                          if (val!.isEmpty || val == '') return 'Required'.tr;
                          return null;
                        },
                      ),
                      CreateTextFromFieldWidget(
                        title: "${'City'.tr}*",
                        hintText: 'Dhaka'.tr,
                        //textEditingController: regCon.userNameTextEditCon,
                        onValidator: (val) {
                          if (val!.isEmpty || val == '') return 'Required'.tr;
                          return null;
                        },
                      ),
                      CreateTextFromFieldWidget(
                        title: "${'State'.tr}*",
                        hintText: 'Dhaka'.tr,
                        //textEditingController: regCon.userNameTextEditCon,
                        onValidator: (val) {
                          if (val!.isEmpty || val == '') return 'Required'.tr;
                          return null;
                        },
                      ),
                      CreateTextFromFieldWidget(
                        title: "${'Zip Code'.tr}*",
                        hintText: 'Occupation'.tr,
                        //textEditingController: regCon.userNameTextEditCon,
                        onValidator: (val) {
                          if (val!.isEmpty || val == '') return 'Required'.tr;
                          return null;
                        },
                      ),
                      CreateTextFromFieldWidget(
                        title: "${'Address 1'.tr}*",
                        hintText: 'Mirpur'.tr,
                        textInputType: TextInputType.text,
                        //textEditingController: regCon.userNameTextEditCon,
                        onValidator: (val) {
                          if (val!.isEmpty || val == '') return 'Required'.tr;
                          return null;
                        },
                      ),
                      CreateTextFromFieldWidget(
                        title: "${'Address 2'.tr}*",
                        hintText: 'Dhaka'.tr,
                        textInputType: TextInputType.text,
                        //textEditingController: regCon.userNameTextEditCon,
                        onValidator: (val) {
                          if (val!.isEmpty || val == '') return 'Required'.tr;
                          return null;
                        },
                      ),
                      CreateTextFromFieldWidget(
                        title: "${'Address 3'.tr}*",
                        hintText: 'Bangladesh'.tr,
                        //textEditingController: regCon.userNameTextEditCon,
                        onValidator: (val) {
                          if (val!.isEmpty || val == '') return 'Required'.tr;
                          return null;
                        },
                      ),
                      CreateTextFromFieldWidget(
                        title: "${'Address Proof File Type'.tr}*",
                        hintText: '2'.tr,
                        //textEditingController: regCon.userNameTextEditCon,
                        onValidator: (val) {
                          if (val!.isEmpty || val == '') return 'Required'.tr;
                          return null;
                        },
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              clickTapped(1);
                            },
                            child: Container(
                              height: 50,
                              width: 80,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xffE19722),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                "Back",
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              clickTapped(3);
                            },
                            child: Container(
                              height: 50,
                              width: 80,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xffE19722),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                "Next",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
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
    style: Get.textTheme.bodyMedium!,
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
    TextStyle hintTextStyle = const TextStyle(
        fontWeight: FontWeight.w400, fontSize: 14, color: Colors.grey);
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
          autovalidateMode: AutovalidateMode.onUserInteraction,
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
