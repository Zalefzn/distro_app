import 'package:distro_app/responsive/responsive.dart';
import 'package:flutter/material.dart';

class CardRow extends StatefulWidget {
  CardRow(this.imageUrl, this.textName, this.textPrice, this.textRate,
      {Key? key})
      : super(key: key);
  var textPrice;
  var textName;
  var imageUrl;
  var textRate;

  @override
  State<CardRow> createState() => _CardRow();
}

class _CardRow extends State<CardRow> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          height: SizeConfig.blockVertical * 30,
          width: SizeConfig.blockHorizontal * 40,
          decoration: BoxDecoration(
              image: DecorationImage(
                  opacity: 0.5,
                  fit: BoxFit.cover,
                  image: AssetImage(widget.imageUrl)),
              color: Colors.black,
              borderRadius: BorderRadius.circular(38)),
        ),
        Row(
          children: [
            SizedBox(
                width: SizeConfig.blockHorizontal * 27,
                height: SizeConfig.blockVertical * 8),
            const Icon(Icons.star, color: Colors.yellow, size: 20),
            Text(widget.textRate, style: const TextStyle(color: Colors.white))
          ],
        ),
        Column(
          children: [
            SizedBox(
                width: SizeConfig.blockHorizontal * 45,
                height: SizeConfig.blockVertical * 25),
            Text(widget.textName,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w700)),
            Text(widget.textPrice,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400))
          ],
        )
      ],
    );
  }
}
