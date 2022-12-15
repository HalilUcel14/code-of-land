import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextTheme {
  static CustomTextTheme? _instance;
  static CustomTextTheme get instance {
    _instance ??= CustomTextTheme._init();
    return _instance!;
  }

  CustomTextTheme._init();

  TextTheme get textTheme => TextTheme(
        bodyText2: GoogleFonts.pressStart2p(),
      );
}
