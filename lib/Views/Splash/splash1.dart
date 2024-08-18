import 'package:coffee_shop/Core/Constants/images.dart';
import 'package:coffee_shop/Views/Auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash1 extends StatefulWidget {
  const Splash1({super.key});

  @override
  _Splash1State createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );

    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    _controller.forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Get.to(() => const LoginScreen());
      }
    });
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
    return FadeTransition(
      opacity: _animation,
      child: Stack(
        children: [
          Image.asset(
            Images.beansImg,
            fit: BoxFit.cover,
            height: h,
            width: w,
          ),
        ],
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
      ),
      body: const Center(
        child: Text('This is the next page!'),
      ),
    );
  }
}
