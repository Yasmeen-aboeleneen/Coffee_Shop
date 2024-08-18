import 'package:coffee_shop/Core/Constants/colors.dart';
 
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimary,
      resizeToAvoidBottomInset: true,
      // body: Logincontainer(),
    );
  }
}
