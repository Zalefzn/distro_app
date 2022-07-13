import 'package:distro_app/banner/banner.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    setState(() {
      Future.delayed(const Duration(seconds: 5),
          () => Navigator.pushNamed(context, '/banner'));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 131,
          width: 123,
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/logo.png'))),
        ),
      ),
    );
  }
}
