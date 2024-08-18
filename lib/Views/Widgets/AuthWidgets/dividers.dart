import 'package:coffee_shop/Core/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dividers extends StatelessWidget {
  const Dividers({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
      child: Row(
        children: [
          const Expanded(
            child: Divider(
              color: kPrimary2,
              thickness: 3,
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: GoogleFonts.notoSansOlChiki(
                  fontWeight: FontWeight.bold,
                  fontSize: w * .04,
                  color: kPrimary,
                  decorationColor: kDarkBrown,
                ),
              )),
          const Expanded(
            child: Divider(
              color: kPrimary2,
              thickness: 3,
            ),
          ),
        ],
      ),
    );
  }
}
