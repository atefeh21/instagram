import 'package:flutter/material.dart';

class GlobalTextStyle {
  //text style for statics on main page
  TextStyle statisticsStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16.0,
  );
  TextStyle statisticsTextStyle = TextStyle(
    fontSize: 14.0,
    color: Colors.grey[700],
  );
  static InputDecoration loginTextFieldStyle = InputDecoration(
    fillColor: Colors.white24,
    filled: true,
    labelStyle: TextStyle(
      color: Colors.white70,
    ),
    hintStyle: TextStyle(
      fontSize: 16.0,
      color: Colors.white70,
      fontFamily: 'NotoSansKR',
    ),
    border: InputBorder.none,
  );
}
