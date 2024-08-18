import 'package:coffee_shop/Core/Constants/colors.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key, required this.title, required this.onTap});
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Material(
      color: kPrimary2,
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: h * .063,
          width: w * .6,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontSize: w * .06,
                  fontWeight: FontWeight.bold,
                  color: kveryWhite),
            ),
          ),
        ),
      ),
    );
  }
}
