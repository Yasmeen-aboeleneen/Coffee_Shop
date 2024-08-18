 
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(vertical: h * .2, horizontal: 15),
      child: Container(
          margin: const EdgeInsets.all(2),
          child: ListView(children: [
            Center(
              child: Text(
                "Reset Your Password",
                // style: Fonts.title,
              ),
            ),
            SizedBox(
              height: h * .011,
            ),
            Center(
              child: Text(
                "Please enter your new password",
                // style: Fonts.customText,
              ),
            ),
            SizedBox(
              height: h * .06,
            ),
            // const CustomPasswordtextfield(
            //   hintText: "Enter your new password",
            //   labelText: "New Password",
            // ),
            // SizedBox(
            //   height: h * .033,
            // ),
            // const CustomPasswordtextfield(
            //   hintText: "Re-enter your new password",
            //   labelText: "Confirm Password",
            // ),
            SizedBox(
              height: h * .06,
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 75),
            //   child: CustomButton(
            //     title: "Reset",
            //     onPressed: () {
            //       Get.to(() => const SuccessNewPassScreen());
            //     },
            //     color: kPrimary,
            //     style: Fonts.splashButtonText,
            //   ),
            // ),
            SizedBox(
              height: h * .035,
            ),
          ])),
    ));
  }
}
