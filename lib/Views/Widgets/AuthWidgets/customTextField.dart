 
import 'package:coffee_shop/Core/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({
    super.key,
    this.keyboardType,
    required this.hintText,
    required this.labelText,
    required this.iconData,
  });
  final TextInputType? keyboardType;
  final String hintText;
  final String labelText;
  final IconData iconData;
  // final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return TextField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.notoSansOlChiki(
            fontWeight: FontWeight.bold, fontSize: w * .035, color: kPrimary),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // label: Text(labelText, style: Fonts.customTextFieldText),
        suffixIcon: Icon(
          iconData,
          color: kPrimary,
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: kPrimary, width: w * .006)),
      ),
      cursorColor: kPrimary,
    );
  }
}
