import 'package:coffee_shop/Core/Constants/colors.dart';
import 'package:coffee_shop/Core/Constants/images.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BuildHeader extends StatelessWidget {
  const BuildHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          " Location",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: w * .04,
              color: kveryWhite,
              height: 1.5),
        ),
        Gap(h * .001),
        Row(
          children: [
            Text(
              " DK , Mansoura",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: w * .05,
                  color: kveryWhite,
                  height: 1.5),
            ),
            Gap(w * .02),
            Image.asset(
              Images.arrowDown,
              height: h * .03,
              width: w * .06,
            )
          ],
        )
      ],
    );
  }
}
