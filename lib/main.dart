import 'package:flutter/material.dart';
import 'package:islamic_dua_app/View/home.dart';
import 'package:islamic_dua_app/View/splash_screen.dart';
import 'package:islamic_dua_app/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
