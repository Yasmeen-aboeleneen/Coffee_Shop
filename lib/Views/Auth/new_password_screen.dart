import 'package:coffee_shop/Core/Constants/colors.dart';
import 'package:coffee_shop/Core/Utils/buttons.dart';
import 'package:coffee_shop/Views/Auth/successNewPass_screen.dart';
import 'package:coffee_shop/Views/Widgets/AuthWidgets/customPassTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(vertical: h * .2, horizontal: 15),
      child: Container(
          margin: const EdgeInsets.all(2),
          child: ListView(children: [
            Center(
              child: Text(
                "Reset Your Password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: w * .033,
                  color: kPrimary,
                ),
              ),
            ),
            SizedBox(
              height: h * .011,
            ),
            Center(
              child: Text(
                "Please enter your new password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: w * .033,
                  color: kPrimary,
                ),
              ),
            ),
            SizedBox(
              height: h * .06,
            ),
            const CustomPasswordtextfield(
              hintText: "Enter your new password",
              labelText: "New Password",
            ),
            SizedBox(
              height: h * .033,
            ),
            const CustomPasswordtextfield(
              hintText: "Re-enter your new password",
              labelText: "Confirm Password",
            ),
            SizedBox(
              height: h * .06,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75),
              child: Buttons(
                title: "Reset",
                onPressed: () {
                  Get.to(() => const SuccessNewPassScreen());
                },
              ),
            ),
            SizedBox(
              height: h * .035,
            ),
          ])),
    ));
  }
}
