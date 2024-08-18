 
import 'package:coffee_shop/Core/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: kPrimary,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
          height: h * .4,
          width: w,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
              color: kveryWhite),
          child: Column(
            children: [
              Text(
                "Forgot Password",
                 
              ),
              SizedBox(
                height: h * .02,
              ),
              Text(
                textAlign: TextAlign.center,
                "Please enter your email to\n reset password",
                // style: Fonts.customText,
              ),
              SizedBox(
                height: h * .04,
              ),
              // const Customtextfield(
              //     hintText: "Enter your email",
              //     labelText: "Email",
              //     iconData: Icons.mail_outline_rounded),
              SizedBox(
                height: h * .04,
              ),
              // CustomButton(
              //     onPressed: () {
              //       Get.to(() => const OtpScreen());
              //     },
              //     title: "Send",
              //     color: kPrimary,
              //     style: Fonts.splashButtonText)
            ],
          ),
        ),
      ),
    );
  }
}
