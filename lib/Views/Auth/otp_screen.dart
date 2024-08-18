import 'package:coffee_shop/Core/Constants/colors.dart';
import 'package:coffee_shop/Views/Auth/new_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: h * .25),
      child: ListView(
        children: [
          Center(
            child: Text(
              "Check Your Email",
              style: GoogleFonts.notoSansOlChiki(
                  fontWeight: FontWeight.bold,
                  fontSize: w * .068,
                  color: kPrimary),
            ),
          ),
          SizedBox(
            height: h * .011,
          ),
          Text(
            "We've sent the code to\n yasmeenaboeleneen10@gmail.com",
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSansOlChiki(
              fontWeight: FontWeight.bold,
              fontSize: w * .04,
            ),
          ),
          SizedBox(
            height: h * .06,
          ),
          OtpTextField(
            numberOfFields: 5,
            enabledBorderColor: kPrimary,
            borderColor: kPrimary,
            cursorColor: kPrimary,
            fieldWidth: w * .13,
            borderRadius: BorderRadius.circular(20),
            showFieldAsBox: true,
            onCodeChanged: (String code) {},
            onSubmit: (String verificationCode) {
              Get.to(() => const NewPasswordScreen());
            },
          ),
          SizedBox(
            height: h * .06,
          ),
          Padding(
            padding: EdgeInsets.only(left: w * .06, bottom: h * .03),
            child: Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                child: Text(
                  "Send code again",
                  style: GoogleFonts.notoSansOlChiki(
                      fontWeight: FontWeight.bold,
                      fontSize: w * .04,
                      color: kPrimary,
                      decoration: TextDecoration.underline,
                      decorationColor: kPrimary),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
