import 'package:coffee_shop/Core/Constants/colors.dart';
import 'package:coffee_shop/Views/Auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessNewPassScreen extends StatelessWidget {
  const SuccessNewPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kveryWhite,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: h * .5,
          width: w * .89,
          decoration: BoxDecoration(
            color: kPrimary,
            borderRadius: BorderRadius.circular(45),
          ),
          padding: const EdgeInsets.all(15),
          child: ListView(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.check_circle_outlined,
                  size: w * .4,
                  color: kveryWhite,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Reset Password Success",
                  style: GoogleFonts.notoSansOlChiki(
                      fontWeight: FontWeight.bold,
                      fontSize: w * .07,
                      color: kveryWhite),
                ),
                SizedBox(
                  height: h * .02,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => const LoginScreen());
                  },
                  child: Text(
                    textAlign: TextAlign.center,
                    "Click here to \n Login to your account",
                    style: GoogleFonts.notoSansOlChiki(
                        fontWeight: FontWeight.bold,
                        fontSize: w * .048,
                        color: kveryWhite,
                        decoration: TextDecoration.underline,
                        decorationColor: kveryWhite),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
