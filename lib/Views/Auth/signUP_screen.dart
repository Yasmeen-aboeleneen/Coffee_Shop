import 'package:coffee_shop/Core/Constants/colors.dart';
import 'package:coffee_shop/Views/Widgets/AuthWidgets/signUp_container.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimary,
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          SignupContainer(),
        ],
      ),
    );
  }
}
