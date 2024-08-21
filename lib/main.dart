import 'package:coffee_shop/Core/Constants/colors.dart';
import 'package:coffee_shop/Models/coffee_model.dart';
import 'package:coffee_shop/Views/Details/details_screen.dart';
import 'package:coffee_shop/Views/Splash/splash1.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee',
      theme: ThemeData(
        scaffoldBackgroundColor: kveryWhite,
        textTheme: GoogleFonts.soraTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Splash1(),
      routes: {
        '/detail': (context) {
          Coffee coffee = ModalRoute.of(context)!.settings.arguments as Coffee;
          return DetailsScreen(coffee: coffee);
        },
      },
    );
  }
}
