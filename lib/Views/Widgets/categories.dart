import 'package:coffee_shop/Core/Constants/colors.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  String categorySelected = "All Coffee";
  final categories = [
    'All Coffee',
    'Turkey',
    'Americano',
    'Latte',
    'esspresso',
    'Machiato'
  ];
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SizedBox(
      height: h * .045,
      width: w,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            String category = categories[index];
            bool isActive = categorySelected == category;
            return GestureDetector(
              onTap: () {
                categorySelected = category;
                setState(() {});
              },
              child: Container(
                height: h * 03,
                width: w * .35,
                decoration: BoxDecoration(
                    color: isActive ? kPrimary2 : kveryWhite,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Text(
                    category,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight:
                            isActive ? FontWeight.bold : FontWeight.w500,
                        fontSize: w * .045,
                        color: isActive ? kveryWhite : kDark,
                        height: 1.5),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
