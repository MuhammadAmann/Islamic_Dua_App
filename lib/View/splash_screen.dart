import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:islamic_dua_app/View/home.dart';
import 'package:islamic_dua_app/utils/colors.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: primarycolor,
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "images/dua.png",
            height: 100,
            // width: 10,
          ),
          Text(
            "Islamic Dua's",
            style: TextStyle(
                color: secondarycolor,
                fontSize: 36,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
      nextScreen: HomeScreen(),
      splashIconSize: double.infinity,
    );
  }
}
