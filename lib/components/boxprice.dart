import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hexcolor/hexcolor.dart';

class BoxPrice extends StatefulWidget {
  const BoxPrice({Key? key, required this.texttype, required this.textprops})
      : super(key: key);
  final String texttype;
  final String textprops;

  @override
  State<BoxPrice> createState() => _BoxPriceState();
}

class _BoxPriceState extends State<BoxPrice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      // height: 60,
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: HexColor('#fbf5ff'), borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Text(
            widget.texttype,
            style: TextStyle(fontFamily: 'kanit', color: HexColor('9d62c2')),
          ),
          Gap(5),
          Text(
            widget.textprops,
            style: TextStyle(fontFamily: 'kanit'),
          )
        ],
      ),
    );
  }
}
