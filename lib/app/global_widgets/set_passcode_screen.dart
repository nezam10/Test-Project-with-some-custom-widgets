import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:lottie/lottie.dart';

class SetPasscodeScreen extends StatelessWidget {
  SetPasscodeScreen({super.key});

  final TextStyle whiteTextStyle = const TextStyle(
      fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xffFFFFFF));
  final TextStyle smallWhiteTextStyle = const TextStyle(
      fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xffFFFFFF));

  void showAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.7),
      builder: (BuildContext context) {
        return AlertDialog(
          titlePadding: EdgeInsets.zero,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          backgroundColor: const Color(0xffFFFFFF),
          content: SizedBox(
            height: Get.height * 0.5,
            width: Get.width * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset("assets/animations/fignerprint.json"),
                const SizedBox(height: 30),
                RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Your Fingerprint',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff505050),
                        ),
                      ),
                      TextSpan(
                        text: ' Successfully',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff00A825),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  LocalAuthentication auth = LocalAuthentication();

  Future authenticate() async {
    final bool isBiometricsAvailable = await auth.isDeviceSupported();

    if (!isBiometricsAvailable) return false;

    try {
      return await auth.authenticate(
        localizedReason: 'Scan Fingerprint To Enter Vault',
        options: const AuthenticationOptions(
          useErrorDialogs: true,
          stickyAuth: true,
        ),
      );
    } on PlatformException {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff002739),
      appBar: AppBar(
        title: const Text("Set Passcode"),
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            SizedBox(
              height: 150,
              width: Get.width * 0.75,
              child: Image.asset("assets/icons/app_logo.png"),
            ),
            const Spacer(),
            Text("Enter Your Passcode", style: whiteTextStyle),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                PasscodeContainer(),
                PasscodeContainer(),
                PasscodeContainer(),
                PasscodeContainer(),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text("Forgot Passcode?", style: smallWhiteTextStyle),
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () async {
                //authenticate();
                bool isAuthenticated = await authenticate();
                print("isAuthenticated========== $isAuthenticated");
                if (isAuthenticated) {
                  //
                  showAlert(context);
                  await Future.delayed(const Duration(milliseconds: 1700), () {
                    Get.back();
                  });

                  //
                } else {
                  Get.snackbar(
                    "fingerprint",
                    "Faile",
                    backgroundColor: const Color(0xffF5AA33),
                  );
                }
              },
              child: SvgPicture.asset(
                "assets/svg/fingerprint.svg",
              ),
            ),
            const Spacer(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class PasscodeContainer extends StatelessWidget {
  const PasscodeContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 57,
        width: 63,
        decoration: BoxDecoration(
          color: Color(0xffF3F5F7),
          borderRadius: BorderRadius.circular(11),
        ),
      ),
    );
  }
}
