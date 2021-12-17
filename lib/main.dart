import 'package:flutter/material.dart';
import 'package:flutteranimatedbottombar/my_bottom_navigation_bar_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBottomNavigationBarScreen(),
    );
  }
}
