import 'package:coffee_shop/Core/Constants/colors.dart';
import 'package:coffee_shop/Core/Constants/images.dart';
import 'package:coffee_shop/Models/coffee_model.dart';
import 'package:coffee_shop/Views/Details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class GridCoffee extends StatefulWidget {
  const GridCoffee({super.key});

  @override
  State<GridCoffee> createState() => _GridCoffeeState();
}

class _GridCoffeeState extends State<GridCoffee> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: listGridCoffee.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: h * .34,
          crossAxisSpacing: w * .035,
          mainAxisSpacing: h * .033,
        ),
        itemBuilder: (context, index) {
          final ValueNotifier<bool> isFavorite = ValueNotifier<bool>(false);
          final ValueNotifier<bool> isAddedToCart = ValueNotifier<bool>(false);

          Coffee coffee = listGridCoffee[index];
          return GestureDetector(
            onTap: () {
              Get.to(() => DetailsScreen(
                    coffee: coffee,
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: kPrimaryLight,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          coffee.image,
                          height: h * .19,
                          width: w,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: h * .03,
                        width: w * .18,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [kveryWhite, kPrimaryLight, kPrimary2]),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12)),
                          color: kPrimaryLight,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              Images.star,
                              height: h * .03,
                              width: w * .05,
                            ),
                            Gap(w * .02),
                            Text(
                              '${coffee.rate}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: w * .035,
                                color: kDark,
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: .01,
                        right: 0,
                        child: GestureDetector(
                          onTap: () {
                            isFavorite.value = !isFavorite.value;
                          },
                          child: Container(
                              height: h * .04,
                              width: w * .1,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  kveryWhite,
                                  kPrimaryLight,
                                  kPrimaryLight,
                                  kPrimary2
                                ]),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomLeft: Radius.circular(12)),
                                color: kPrimaryLight,
                              ),
                              child: ValueListenableBuilder<bool>(
                                  valueListenable: isFavorite,
                                  builder: (context, value, child) {
                                    return Icon(
                                      value
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: value ? kPrimary2 : Colors.black,
                                    );
                                  })),
                        ),
                      )
                    ],
                  ),
                  Gap(h * .01),
                  Text(
                    coffee.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: w * .042,
                      color: kDarkin,
                    ),
                  ),
                  Gap(h * .01),
                  Text(
                    coffee.type,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: w * .04,
                      color: kPrimary,
                    ),
                  ),
                  Gap(h * .01),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          NumberFormat.currency(
                                  locale: "en_US",
                                  symbol: "\$ ",
                                  decimalDigits: 2)
                              .format(coffee.price),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: w * .04,
                            color: kDark,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            isAddedToCart.value = !isAddedToCart.value;
                          },
                          child: Container(
                              margin: EdgeInsets.only(right: w * .01),
                              height: h * .042,
                              width: w * .11,
                              decoration: const BoxDecoration(
                                  color: kPrimary2,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              child: ValueListenableBuilder<bool>(
                                  valueListenable: isAddedToCart,
                                  builder: (context, value, child) {
                                    return Icon(
                                      value
                                          ? Icons.check_sharp
                                          : Icons.add_shopping_cart_outlined,
                                      color: value ? kveryWhite : kveryWhite,
                                    );
                                  })),
                        ),
                      ])
                ],
              ),
            ),
          );
        });
  }
}
