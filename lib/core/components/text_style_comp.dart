import 'package:flutter/material.dart';

class MyTextStyleComp {
  static TextStyle myTextStyle({
    Color color = Colors.black,
    double fontSize = 14,
    FontWeight weight = FontWeight.w500,
  }) =>
      TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: weight,
      );
}
