import 'package:flutter/material.dart';

class ColorsTheme {
  static ColorsTheme? _instance;
  static ColorsTheme get instance {
    _instance ??= ColorsTheme._init();
    return _instance!;
  }

  ColorsTheme._init();

  Color selectedColor = const Color(0xFF4AC8EA);
  Color drawerBackgroundColor = const Color(0XFF272D34);
}
