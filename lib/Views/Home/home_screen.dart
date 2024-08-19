import 'package:coffee_shop/Core/Constants/colors.dart';
import 'package:coffee_shop/Core/Constants/images.dart';
import 'package:coffee_shop/Views/Cart/cart_screen.dart';
import 'package:coffee_shop/Views/Favourite/fav_screen.dart';
import 'package:coffee_shop/Views/Home/home_screen_body.dart';
import 'package:coffee_shop/Views/Notification/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexMenu = 0;
  final menu = [
    {
      'icon': Images.home1,
      'icon_active': 'Assets/ic_home_filled.png',
      'fragment': const HomeScreenBody(),
    },
    {
      'icon': Images.heart,
      'icon_active': 'Assets/ic_heart_border.png',
      'fragment': const FavScreen(),
    },
    {
      'icon': Images.bag,
      'icon_active': 'Assets/ic_bag_border.png',
      'fragment': const CartScreen(),
    },
    {
      'icon': Images.notification,
      'icon_active': 'Assets/ic_notification_border.png',
      'fragment': const NotificationScreen(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: menu[indexMenu]['fragment'] as Widget,
          bottomNavigationBar: Container(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(menu.length, (index) {
                Map item = menu[index];
                bool isActive = indexMenu == index;
                return InkWell(
                  onTap: () {
                    indexMenu = index;
                    setState(() {});
                  },
                  child: SizedBox(
                    height: h * .06,
                    width: w * .2,
                    child: Column(
                      children: [
                        ImageIcon(
                          AssetImage(item[isActive ? 'icon_active' : 'icon']),
                          size: h * .035,
                          color: isActive ? kPrimary2 : kPrimary,
                        ),
                        if (isActive) const Gap(6),
                        if (isActive)
                          Container(
                            height: h * .004,
                            width: w * .045,
                            decoration: BoxDecoration(
                                color: kPrimary2,
                                borderRadius: BorderRadius.circular(15)),
                          )
                      ],
                    ),
                  ),
                );
              }),
            ),
          )),
    );
  }
}
