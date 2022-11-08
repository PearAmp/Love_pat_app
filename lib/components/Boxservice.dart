import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hexcolor/hexcolor.dart';

class ServiceBox extends StatelessWidget {
  final Map<String, dynamic> service;
  const ServiceBox({Key? key, required this.service}) : super(key: key);
  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            width: 80,
            color: HexColor('#a537f5'),
            child: Image.asset(
              'assets/images/${service['image']}',
              height: 35,
            ),
          ),
        ),
        Gap(10),
        Text(
          service['titletext'],
          style: TextStyle(
            fontFamily: 'Kanit',
            color: HexColor('a537f5'),
          ),
        ),
      ],
    );
  }
}
