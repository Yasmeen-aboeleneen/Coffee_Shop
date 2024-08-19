import 'package:coffee_shop/Core/Constants/images.dart';
import 'package:flutter/material.dart';

class CustomBannerPromo extends StatelessWidget {
  const CustomBannerPromo({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        Images.banner,
        width: w,
        height: h * .177,
      ),
    );
  }
}
