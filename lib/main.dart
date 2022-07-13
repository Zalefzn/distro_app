import 'package:distro_app/banner/banner.dart';
import 'package:distro_app/homeProduct/homeProduct.dart';
import 'package:distro_app/splashScreen/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) => const SplashScreen(),
      '/banner': (context) => const BannerPage(),
    });
  }
}
