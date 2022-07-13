import 'package:distro_app/homeProduct/homeProduct.dart';
import 'package:distro_app/responsive/responsive.dart';
import 'package:flutter/material.dart';

class BannerPage extends StatefulWidget {
  const BannerPage({Key? key}) : super(key: key);

  @override
  State<BannerPage> createState() => _BannerPage();
}

class _BannerPage extends State<BannerPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        opacity: 0.5,
                        fit: BoxFit.cover,
                        image: AssetImage('assets/banner.png')))),
            Container(
              margin: EdgeInsets.only(top: SizeConfig.blockVertical * 70),
              padding: EdgeInsets.only(
                left: SizeConfig.blockHorizontal * 11,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('welcome to\nkaos van java store',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400)),
                  SizedBox(height: SizeConfig.blockVertical * 3),
                  Container(
                    height: SizeConfig.blockVertical * 7,
                    width: SizeConfig.blockHorizontal * 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeProduct()),
                                (route) => false);
                          });
                        },
                        child: const Text('Next',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w800))),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
