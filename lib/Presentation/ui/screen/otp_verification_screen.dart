import 'package:e_commerce/Presentation/ui/utility/color_pattern.dart';
import 'package:e_commerce/Presentation/ui/utility/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'dart:async';


class ScreenController extends GetxController {
  RxInt countdown = 60.obs;
  RxBool isResendEnabled = false.obs;

  void startCountdown() {
    isResendEnabled.value = false;
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (countdown.value > 0) {
        countdown.value--;
      } else {
        timer.cancel();
        isResendEnabled.value = true;
      }
    });
  }

  void resendCode() {
    if (isResendEnabled.value) {
      // Add your logic for resending the code here
      print("Resend Code");
      startCountdown();
    }
  }
}

class OTPVarification extends StatelessWidget {
  final ScreenController controller = Get.put(ScreenController());
  bool isCountdownStarted = false;
  @override

  Widget build(BuildContext context){
    if (!isCountdownStarted) {
      controller.startCountdown();
      isCountdownStarted = true;
    }

    return Scaffold(
      body: Center(
        child: Obx(() {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(ImageAssets.craftyBayLogoSVG,height: 120,),
                  SizedBox(height: 12),
                  Text(
                    "Enter OTP Code",
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "A 4 Digit OTP Code has been sent",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 12),
                  PinCodeTextField(
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    keyboardType: TextInputType.number,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 50,
                      activeFillColor: Colors.white,
                      selectedFillColor: Colors.white,
                      inactiveFillColor: Colors.white,
                      activeColor: Colors.blue,
                      inactiveColor: Colors.blue,
                      selectedColor: Colors.red,
                    ),
                    animationDuration: Duration(milliseconds: 300),
                    backgroundColor: Colors.white,
                    enableActiveFill: true,
                    onCompleted: (v) {},
                    onChanged: (value) {},
                    beforeTextPaste: (text) {
                      return true;
                    },
                    appContext: context,
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        print("I am print button");
                      },
                      child: Text("Next"),
                    ),
                  ),
                  SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(text: "This code will expire in "),
                        TextSpan(
                          style: TextStyle(color: Colors.blue),
                          text: "${controller.countdown} s",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      controller.resendCode();
                    },
                    child: Text(
                      "Resend Code",
                      style: TextStyle(
                        color: controller.isResendEnabled.value
                            ? Colors.black
                            : Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}