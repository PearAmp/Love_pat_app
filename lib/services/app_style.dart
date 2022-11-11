import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Styles {
  static HexColor colorBase = HexColor('a537f5');
  static Color colorBlack = Colors.black;
  static HexColor colorPastal = HexColor('edddfa');

  //text

  static TextStyle txtTitle = TextStyle(
      fontFamily: 'Prompt',
      fontSize: 20,
      fontWeight: FontWeight.w800,
      color: Colors.black);

  static TextStyle txtsubGrey = TextStyle(
      fontFamily: 'kanit',
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.grey);

  static TextStyle txtmedium = TextStyle(
      fontFamily: 'kanit',
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.black);
}
