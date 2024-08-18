import 'package:coffee_shop/Core/Constants/colors.dart';
import 'package:coffee_shop/Core/Constants/images.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomSearchTextfield extends StatelessWidget {
  const CustomSearchTextfield({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Container(
            height: h * .07,
            decoration: BoxDecoration(
                color: kDarkin, borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                ImageIcon(
                  AssetImage(
                    Images.search,
                  ),
                  color: kPrimary,
                  size: h * .033,
                ),
                Gap(w * .01),
                Expanded(
                    child: TextField(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: w * .04,
                    color: kveryWhite,
                  ),
                  cursorColor: kPrimary,
                  decoration: InputDecoration(
                      hintText: hint,
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: w * .04,
                        color: kPrimary,
                      ),
                      border: InputBorder.none),
                ))
              ],
            ),
          ),
        ),
        Gap(w * .04),
        Container(
          height: h * .07,
          width: w * .13,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: kPrimary2),
          child: Center(
            child: ImageIcon(
              AssetImage(
                Images.filter,
              ),
              color: kveryWhite,
              size: h * .05,
            ),
          ),
        ),
      ],
    );
  }
}
