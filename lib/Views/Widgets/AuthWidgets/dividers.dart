// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_shop/Core/Constants/colors.dart';
import 'package:flutter/material.dart';

 

class Dividers extends StatelessWidget {
  const Dividers({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
      child: Row(
        children: [
          const Expanded(
            child: Divider(
              color: kPrimary,
              thickness: 3,
            ),
          ),
          // Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Text(text, style: Fonts.loginWithText)),
          const Expanded(
            child: Divider(
              color: kPrimary,
              thickness: 3,
            ),
          ),
        ],
      ),
    );
  }
}
