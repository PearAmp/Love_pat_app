import 'package:flutter/material.dart';
import 'package:Love_pet/pages/profile.dart';

class BannerApp extends StatefulWidget {
  const BannerApp({Key? key, required this.title, required this.imageprofile})
      : super(key: key);
  final String title;
  final String imageprofile;

  @override
  State<BannerApp> createState() => _BannerAppState();
}

class _BannerAppState extends State<BannerApp> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          widget.title,
          style: TextStyle(
              fontFamily: 'Prompt',
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.black),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          },
          child: Image.asset(
            widget.imageprofile,
            width: 35,
          ),
        )
      ],
    );
  }
}
