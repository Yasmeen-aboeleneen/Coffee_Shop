import 'package:coffee_shop/Core/Constants/colors.dart';
import 'package:flutter/material.dart';

class BuildBackground extends StatelessWidget {
  const BuildBackground({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      height: h * .32,
      width: w,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [kVeryDark, kDark]),
      ),
    );
  }
}
