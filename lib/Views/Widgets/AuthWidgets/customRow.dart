 import 'package:coffee_shop/Core/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

 

class CustomRow extends StatefulWidget {
  const CustomRow({super.key});

  @override
  State<CustomRow> createState() => _CustomRawState();
}

class _CustomRawState extends State<CustomRow> {
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    // LoginControllerImplement controller = Get.put(LoginControllerImplement());
    var w = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Checkbox(
            checkColor: Colors.white,
            activeColor: kPrimary,
            value: isCheck,
            onChanged: (newValue) {
              setState(() {
                isCheck = newValue;
              });
            }),
        //  const      SizedBox(
        //     width: 1,
        //   ),
        Expanded(
            child: RichText(
                text: TextSpan(children: [
          TextSpan(
            text: 'Remember me',
            style: TextStyle(
                color: kPrimary,
                fontSize: w * .04,
                fontWeight: FontWeight.bold),
          ),
        ]))),

        GestureDetector(
            onTap: () {
              // Get.to(() => const ForgotPasswordScreen());
            },
            child: Text(
              "Forgot Password ?",
              style: GoogleFonts.notoSansOlChiki(
                  fontWeight: FontWeight.bold,
                  fontSize: w * .04,
                  color: kPrimary,
                  decoration: TextDecoration.underline,
                  decorationColor: kPrimary),
            )),
      ],
    );
  }
}
