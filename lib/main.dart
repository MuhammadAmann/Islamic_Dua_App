import 'package:flutter/material.dart';
import 'package:islamic_dua_app/View/home.dart';
import 'package:islamic_dua_app/View/splash_screen.dart';
import 'package:islamic_dua_app/provider/fav_provider.dart';
import 'package:islamic_dua_app/utils/colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavouriteItemprovider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash_Screen(),
      ),
    );
  }
}
