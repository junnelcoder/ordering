import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/CardPage.dart';
import 'pages/CategoryPage.dart';
import 'pages/HomePage.dart';
import 'pages/ItemPage.dart';
import 'pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      title: "Food App", // Moved title inside MaterialApp
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:
            Color(0xFFF5F5F3), // Corrected spelling and used Colors.white
      ),
      initialRoute: "/login",
      routes: {
        "/login": (context) => LoginPage(), // Define the login page route
        "/home": (context) => HomePage2(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
        "categoryPage": (context) => CategoryPage(),
      },
    );
  }
}
