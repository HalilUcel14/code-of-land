import 'package:flutter/material.dart';

class TextStyleTheme {
  static TextStyleTheme? _instance;
  static TextStyleTheme get instance {
    _instance ??= TextStyleTheme._init();
    return _instance!;
  }

  TextStyleTheme._init();

  TextStyle listTitleDefaultTextStyle = const TextStyle(
      color: Colors.white70, fontSize: 20, fontWeight: FontWeight.w600);
  TextStyle listTitleSelectedTextStyle = const TextStyle(
      color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600);
}
