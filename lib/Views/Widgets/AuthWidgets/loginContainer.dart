import 'package:coffee_shop/Core/Constants/colors.dart';
import 'package:coffee_shop/Core/Constants/images.dart';
import 'package:coffee_shop/Core/Utils/buttons.dart';
import 'package:coffee_shop/Views/Auth/signUP_screen.dart';
import 'package:coffee_shop/Views/Widgets/AuthWidgets/customPassTextField.dart';
import 'package:coffee_shop/Views/Widgets/AuthWidgets/customRow.dart';
import 'package:coffee_shop/Views/Widgets/AuthWidgets/customTextField.dart';
import 'package:coffee_shop/Views/Widgets/AuthWidgets/dividers.dart';
import 'package:coffee_shop/Views/Widgets/AuthWidgets/socialMediaRow.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class Logincontainer extends StatelessWidget {
  const Logincontainer({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 10),
        height: h * .65,
        width: w,
        decoration: const BoxDecoration(
            color: kveryWhite,
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: Center(
          child: Column(
            children: [
              const Customtextfield(
                keyboardType: TextInputType.emailAddress,
                hintText: "Enter your email",
                labelText: "Email",
                iconData: Icons.mail_outline_rounded,
              ),
              SizedBox(
                height: h * .03,
              ),
              const CustomPasswordtextfield(
                hintText: "Enter your password",
                labelText: "Password",
              ),
              SizedBox(
                height: h * .001,
              ),
              const CustomRow(),
              SizedBox(
                height: h * .001,
              ),
              Buttons(
                onPressed: () {
                  // Get.to(() => const WelcomeSplashScreen());
                },
                title: "Login",
              ),
              SizedBox(
                height: h * .022,
              ),
              InkWell(
                  onTap: () {
                    Get.to(() => const SignupScreen());
                  },
                  child: Text(
                    "Don't have an account ? Sign up",
                    style: GoogleFonts.notoSansOlChiki(
                        fontWeight: FontWeight.bold,
                        fontSize: w * .04,
                        color: kPrimary,
                        decorationColor: kPrimary),
                  )),
              const Dividers(
                text: 'Login with',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SocialmediaRow(image: Images.google, text: "Google"),
                  SocialmediaRow(image: Images.facebook, text: "Facebook"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
