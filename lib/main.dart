import 'package:flutter/material.dart';
import 'package:shop/custom_theme.dart';
import 'package:shop/models/cart.dart';
import 'package:shop/pages/home_page.dart';
import 'package:shop/pages/intro_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final cart = Cart();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme.Theme,
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      routes: {
        '/home': (context) => HomePage(
              cart: cart,
            ),
      },
    );
  }
}
