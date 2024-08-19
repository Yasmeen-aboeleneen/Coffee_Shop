import 'package:coffee_shop/Views/Widgets/build_background.dart';
import 'package:coffee_shop/Views/Widgets/build_header.dart';
import 'package:coffee_shop/Views/Widgets/categories.dart';
import 'package:coffee_shop/Views/Widgets/custom_banner_promo.dart';
import 'package:coffee_shop/Views/Widgets/custom_search_textfield.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        Stack(
          children: [
            const BuildBackground(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * .041),
              child: Column(
                children: [
                  Gap(h * .05),
                  const BuildHeader(),
                  Gap(h * .03),
                  const CustomSearchTextfield(
                    hint: " Search coffee",
                  ),
                  Gap(h * .033),
                  const CustomBannerPromo(),
                  Gap(h * .02),
                  const Categories()
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
