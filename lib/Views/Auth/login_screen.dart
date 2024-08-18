import 'package:coffee_shop/Core/Constants/colors.dart';
import 'package:coffee_shop/Views/Widgets/AuthWidgets/loginContainer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kDarkBrown,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: h * .06,
            ),
            Text(
              textAlign: TextAlign.center,
              "COFFEETCHINO",
              style: GoogleFonts.merienda(
                fontWeight: FontWeight.bold,
                fontSize: w * .08,
                color: kPrimary2,
              ),
            ),
            SizedBox(
              height: h * .06,
            ),
            const Logincontainer(),
          ],
        ),
      ),
    );
  }
}
