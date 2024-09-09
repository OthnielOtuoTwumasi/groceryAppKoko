import 'package:flutter/material.dart';
import 'package:grocery_app_koko/models/cart_model.dart';
import 'package:grocery_app_koko/pages/cart_page.dart';
import 'package:grocery_app_koko/pages/get_started_page.dart';
import 'package:grocery_app_koko/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(), child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        "/": (context) => const GetStartedPage(),
        "/homePage": (context) => const HomePage(),
        "/cartPage": (context) => const CartPage(),
      },
    ),);
  }
}

