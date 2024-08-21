import 'package:coffee_shop/Core/Constants/images.dart';
import 'package:coffee_shop/Core/Utils/buttons.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop/Core/Constants/colors.dart';
import 'package:coffee_shop/Models/coffee_model.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:readmore/readmore.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    Key? key,
    required this.coffee,
  }) : super(key: key);
  final Coffee coffee;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    String sizeSelected = 'M';
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kPrimary, size: w * .06),
        centerTitle: true,
        title: Text(
          "Details",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: w * .06,
              color: kPrimary,
              height: 1.5),
        ),
      ),
      body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          children: [
            Gap(h * .01),
            ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: Image.asset(
                  widget.coffee.image,
                  width: w,
                  height: h * .35,
                  fit: BoxFit.cover,
                )),
            Gap(h * .03),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.coffee.name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: w * .06,
                      color: kDark,
                      height: 1.5),
                ),
                Gap(h * .01),
                Text(
                  widget.coffee.type,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: w * .05,
                    color: kPrimary,
                  ),
                ),
                Gap(h * .01),
                Row(
                  children: [
                    Image.asset(
                      Images.star,
                      height: h * .03,
                      width: w * .05,
                    ),
                    Gap(w * .02),
                    Text(
                      '${widget.coffee.rate}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: w * .042,
                        color: kDark,
                      ),
                    ),
                    Text(
                      '  (${widget.coffee.review})',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: w * .042,
                        color: kPrimary,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Gap(h * .01),
            Divider(
              thickness: w * .001,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Description',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xff242424),
                  ),
                ),
                const Gap(8),
                ReadMoreText(
                  widget.coffee.description,
                  trimLength: 110,
                  trimMode: TrimMode.Length,
                  trimCollapsedText: ' Read More',
                  trimExpandedText: ' Read Less',
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Color(0xffA2A2A2),
                  ),
                  moreStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xffC67C4E),
                  ),
                  lessStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xffC67C4E),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Size',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xff242424),
                  ),
                ),
                const Gap(16),
                Row(
                  children: ['S', '', 'M', '', 'L'].map((e) {
                    if (e == '') return const Gap(16);

                    bool isSelected = sizeSelected == e;
                    return Expanded(
                      child: GestureDetector(
                        onTap: () {
                          sizeSelected = e;
                          setState(() {});
                        },
                        child: Container(
                          height: 41,
                          decoration: BoxDecoration(
                            color: Color(isSelected ? 0xffF9F2ED : 0xffFFFFFF),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color:
                                  Color(isSelected ? 0xffC67C4E : 0xffE3E3E3),
                              width: 1,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            e,
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color:
                                  Color(isSelected ? 0xffC67C4E : 0xff242424),
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            )
          ]),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: const BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Price',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: w * .05,
                      color: kPrimary,
                    ),
                  ),
                  const Gap(4),
                  Text(
                    NumberFormat.currency(
                      decimalDigits: 2,
                      locale: 'en_US',
                      symbol: '\$ ',
                    ).format(widget.coffee.price),
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: kPrimary2,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                width: w * .5,
                child: CustomButton(
                  onPressed: () {},
                  title: "Add to cart",
                  color: kPrimary2,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: w * .05,
                    color: kveryWhite,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
