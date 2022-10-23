import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/app/global_widgets/touch_id_screen.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({super.key});

  final TextStyle whiteTextStyle = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xffFFFFFF));
  final TextStyle greyTextStyle400 = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xffD4D4D4));
  final TextStyle smallGreyTextStyle400 = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff8A8A8A));
  final TextStyle blackTextStyle = const TextStyle(
      fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xff505050));
  final TextStyle smallBlackTextStyle = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff5C5C5C));
  final TextStyle blackTextStyleBold = const TextStyle(
      fontSize: 23, fontWeight: FontWeight.w600, color: Color(0xff212121));

  @override
  Widget build(BuildContext context) {
    String _value = "123456";
    String _otpValue = "123456";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transfer"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              height: 713,
              width: Get.width,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Transfer by:", style: blackTextStyle),
                    SizedBox(
                      height: 60,
                      child: Row(
                        children: [
                          Expanded(
                            child: LabeledRadio(
                              label: "User Id",
                              padding: EdgeInsets.zero,
                              groupValue: _value,
                              value: "123456",
                              onChanged: (value) {
                                _value = value;
                              },
                            ),
                          ),
                          Expanded(
                            child: LabeledRadio(
                              label: "Phone",
                              padding: EdgeInsets.zero,
                              groupValue: _value,
                              value: "01835006682",
                              onChanged: (value) {
                                _value = value;
                              },
                            ),
                          ),
                          Expanded(
                            child: LabeledRadio(
                              label: "Email",
                              padding: EdgeInsets.zero,
                              groupValue: _value,
                              value: "nezamcst13@gmail.com",
                              onChanged: (value) {
                                _value = value;
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    Text("Transfer To", style: blackTextStyle),
                    const SizedBox(height: 10),
                    CreateBoxShap(
                      color: const Color(0xffF3F5F7),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelStyle: greyTextStyle400,
                          hintStyle: greyTextStyle400,
                          hintText: "Johan smith",
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Text("Currency", style: blackTextStyle),
                    const SizedBox(height: 10),
                    CreateBoxShap(
                      color: const Color(0xffF3F5F7),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelStyle: greyTextStyle400,
                          hintStyle: greyTextStyle400,
                          hintText: "USD",
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Text("Amount", style: blackTextStyle),
                    const SizedBox(height: 10),
                    CreateBoxShap(
                      color: const Color(0xffF3F5F7),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelStyle: greyTextStyle400,
                          hintStyle: greyTextStyle400,
                          hintText: "100 USD",
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const SizedBox(height: 25),
                    Text("Comments", style: blackTextStyle),
                    const SizedBox(height: 10),
                    CreateBoxShap(
                      height: 120,
                      color: const Color(0xffF3F5F7),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        maxLines: 15,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelStyle: greyTextStyle400,
                          hintStyle: greyTextStyle400,
                          hintText: "Loren Ipsum",
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text("OTP Send To:", style: blackTextStyle),
                    SizedBox(
                      height: 60,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 2,
                            child: LabeledRadio(
                              label: "Email",
                              padding: EdgeInsets.zero,
                              groupValue: _otpValue,
                              value: "123456",
                              onChanged: (value) {
                                _otpValue = value;
                              },
                            ),
                          ),
                          Flexible(
                            flex: 5,
                            child: LabeledRadio(
                              label: "Phone",
                              padding: EdgeInsets.zero,
                              groupValue: _otpValue,
                              value: "01835006682",
                              onChanged: (value) {
                                _otpValue = value;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 12, right: 12, top: 20, bottom: 20),
                      decoration: BoxDecoration(
                        color: const Color(0xffF8F8F8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Text("Receiver Name :",
                                    style: smallBlackTextStyle),
                              ),
                              Expanded(
                                flex: 6,
                                child:
                                    Text("John Smith", style: blackTextStyle),
                              ),
                            ],
                          ),
                          const SizedBox(height: 25),
                          Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child:
                                    Text("Email :", style: smallBlackTextStyle),
                              ),
                              Expanded(
                                flex: 6,
                                child: Text("johnsmith@gmail.com",
                                    style: blackTextStyle),
                              ),
                            ],
                          ),
                          const SizedBox(height: 25),
                          Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child:
                                    Text("Phone :", style: smallBlackTextStyle),
                              ),
                              Expanded(
                                flex: 6,
                                child:
                                    Text("094343434353", style: blackTextStyle),
                              ),
                            ],
                          ),
                          const SizedBox(height: 25),
                          Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Text("Account Status :",
                                    style: smallBlackTextStyle),
                              ),
                              Expanded(
                                  flex: 6,
                                  child: ElevatedButton.icon(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        const Color(0xff00A825),
                                      ),
                                    ),
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.verified_user_outlined,
                                      size: 16,
                                    ),
                                    label: Text("Verified"),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Text(
                              "Note : Please Be Careful to transfer to any any user.",
                              style: smallBlackTextStyle)
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    LabeledRadio(
                      label: "I read & Accept Transfer Policies",
                      padding: EdgeInsets.zero,
                      groupValue: _otpValue,
                      value: "",
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 5),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Get.to(() => TouchIdScreen());
                            },
                            child: Container(
                              height: 50,
                              width: Get.width,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xffF7AA31),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text("Proceed", style: whiteTextStyle),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Get.to(() => TouchIdScreen());
                            },
                            child: Container(
                              height: 50,
                              width: Get.width,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xffF5001B),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text("Cancel", style: whiteTextStyle),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
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

class LabeledRadio extends StatelessWidget {
  const LabeledRadio({
    super.key,
    required this.label,
    required this.padding,
    required this.groupValue,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final EdgeInsets padding;
  final String groupValue;
  final String value;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    const TextStyle blackTextSty = TextStyle(
        fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff5E5E5E));
    return InkWell(
      onTap: () {
        if (value != groupValue) {
          onChanged(value);
        }
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Radio<String>(
              fillColor: MaterialStateProperty.all(const Color(0xffA6A6A6)),
              visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              activeColor: const Color(0xffE19722),
              groupValue: groupValue,
              value: value,
              onChanged: (String? newValue) {
                onChanged(newValue!);
              },
            ),
            const SizedBox(width: 5),
            Expanded(child: Text(label, style: blackTextSty)),
          ],
        ),
      ),
    );
  }
}
