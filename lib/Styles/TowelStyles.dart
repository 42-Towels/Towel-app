import 'package:flutter/material.dart';

class TowelStyles {
  // Text styles
  static String _fontFamily = 'Roboto';

    static final titleTextStyle = TextStyle(
    color: Colors.white,
    fontFamily: _fontFamily,
    fontWeight: FontWeight.bold,
    letterSpacing: 5.0,
    fontSize: 34,
  );
  static final gitTitleTextStyle = TextStyle(
    color: Colors.black,
    fontFamily: _fontFamily,
    letterSpacing: 1.5,
    fontSize: 28,
  );
  static final gitDescTextStyle = TextStyle(
    color: Colors.black,
    fontFamily: _fontFamily,
    letterSpacing: 0,
    fontSize: 18,
  );

}