import 'package:coffee_shop/Core/Constants/colors.dart';
import 'package:coffee_shop/Core/Constants/images.dart';
import 'package:coffee_shop/Core/Utils/buttons.dart';
import 'package:coffee_shop/Views/Home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeInAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _fadeInAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kVeryDark,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              Images.bgImage,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: h * .6,
            child: Container(
              margin: const EdgeInsets.all(0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FadeTransition(
                    opacity: _fadeInAnimation,
                    child: Text(
                      "Fall in Love with\n Coffee in Blissful\n Delight!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: w * .09,
                          color: kveryWhite,
                          height: 1.5),
                    ),
                  ),
                  FadeTransition(
                    opacity: _fadeInAnimation,
                    child: Text(
                      "Welcome to our cozy coffee corner, where\n every cup is a delightful for you",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: w * .033,
                        color: kPrimary,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * .04,
                  ),
                  Buttons(
                    title: "Get Started",
                    onTap: () {
                      Get.to(() => const HomeScreen());
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
