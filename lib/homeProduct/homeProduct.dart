import 'package:distro_app/cardRow/cardRow.dart';
import 'package:distro_app/responsive/responsive.dart';
import 'package:flutter/material.dart';

class HomeProduct extends StatefulWidget {
  const HomeProduct({Key? key}) : super(key: key);

  @override
  State<HomeProduct> createState() => _HomeProduct();
}

class _HomeProduct extends State<HomeProduct> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          shape: const ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          backgroundColor: Colors.black,
          expandedHeight: 300,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Kaos Van Java',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600)),
                    SizedBox(height: SizeConfig.blockVertical * 1),
                    const Text('Kaos Premium Bandung',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      opacity: 0.6,
                      image: AssetImage('assets/productBanner.png'))),
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.all(20),
                child: const Text('all categorys :',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w500))),
            Container(
              height: SizeConfig.blockVertical * 35,
              width: SizeConfig.blockHorizontal * 100,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardRow(
                        'assets/image1.png', 'Polos Hitam', 'Rp.35.000', '4.8'),
                    CardRow(
                        'assets/image2.png', 'Polos Putih', 'Rp.40.000', '4.3'),
                    CardRow(
                        'assets/image3.png', 'Polos Abu', 'Rp.35.000', '4,4'),
                    CardRow(
                        'assets/image2.png', 'Polos Krem', 'Rp.40.000', '4.6'),
                  ],
                ),
              ),
            ),
          ],
        )),
        SliverToBoxAdapter(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.all(20),
                child: const Text('Combed 30s :',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w500))),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  height: SizeConfig.blockVertical * 25,
                  width: SizeConfig.blockHorizontal * 40,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30)),
                ),
              ],
            ),
          ],
        )),
      ],
    ));
  }
}
