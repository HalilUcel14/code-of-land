import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum FontWeightEnum {
  light(300),
  regular(400),
  medium(500),
  large(600),
  bold(700),
  ;

  FontWeight get font {
    switch (this) {
      case FontWeightEnum.light:
        return FontWeight.w300;
      case FontWeightEnum.regular:
        return FontWeight.w400;
      case FontWeightEnum.medium:
        return FontWeight.w500;
      case FontWeightEnum.large:
        return FontWeight.w600;
      case FontWeightEnum.bold:
        return FontWeight.w700;
    }
  }

  const FontWeightEnum(this.value);
  final double value;
}

class CustomTextTheme {
  static CustomTextTheme? _instance;
  static CustomTextTheme get instance {
    _instance ??= CustomTextTheme._init();
    return _instance!;
  }

  CustomTextTheme._init();

  TextStyle defaultStyle = GoogleFonts.robotoSlab();
  TextStyle primaryStyle = GoogleFonts.pressStart2p();

  TextTheme get normalTheme => TextTheme(
        headline1: defaultStyle.copyWith(
          fontSize: 96,
          fontWeight: FontWeightEnum.light.font,
          letterSpacing: -1.5,
        ),
        headline2: defaultStyle.copyWith(
          fontSize: 60,
          fontWeight: FontWeightEnum.light.font,
          letterSpacing: -0.5,
        ),
        headline3: defaultStyle.copyWith(
          fontSize: 48,
          fontWeight: FontWeightEnum.regular.font,
        ),
        headline4: defaultStyle.copyWith(
          fontSize: 34,
          fontWeight: FontWeightEnum.regular.font,
          letterSpacing: 0.25,
        ),
        headline5: defaultStyle.copyWith(
          fontSize: 24,
          fontWeight: FontWeightEnum.regular.font,
        ),
        headline6: defaultStyle.copyWith(
          fontSize: 20,
          fontWeight: FontWeightEnum.medium.font,
          letterSpacing: 0.15,
        ),
        subtitle1: defaultStyle.copyWith(
          fontSize: 16,
          fontWeight: FontWeightEnum.regular.font,
          letterSpacing: 0.15,
        ),
        subtitle2: defaultStyle.copyWith(
          fontSize: 14,
          fontWeight: FontWeightEnum.medium.font,
          letterSpacing: 0.1,
        ),
        bodyText1: defaultStyle.copyWith(
          fontSize: 16,
          fontWeight: FontWeightEnum.regular.font,
          letterSpacing: 0.5,
        ),
        bodyText2: defaultStyle.copyWith(
          fontSize: 14,
          fontWeight: FontWeightEnum.regular.font,
          letterSpacing: 0.25,
        ),
        button: defaultStyle.copyWith(
          fontSize: 14,
          fontWeight: FontWeightEnum.medium.font,
          letterSpacing: 1.25,
        ),
        caption: defaultStyle.copyWith(
          fontSize: 12,
          fontWeight: FontWeightEnum.regular.font,
          letterSpacing: 0.4,
        ),
        overline: defaultStyle.copyWith(
          fontSize: 10,
          fontWeight: FontWeightEnum.regular.font,
          letterSpacing: 1.5,
        ),
      );
//
//
  TextTheme get primaryTheme => TextTheme(
        headline1: primaryStyle.copyWith(
          fontSize: 96,
          fontWeight: FontWeightEnum.light.font,
          letterSpacing: -1.5,
        ),
        headline2: primaryStyle.copyWith(
          fontSize: 60,
          fontWeight: FontWeightEnum.light.font,
          letterSpacing: -0.5,
        ),
        headline3: primaryStyle.copyWith(
          fontSize: 48,
          fontWeight: FontWeightEnum.regular.font,
        ),
        headline4: primaryStyle.copyWith(
          fontSize: 34,
          fontWeight: FontWeightEnum.regular.font,
          letterSpacing: 0.25,
        ),
        headline5: primaryStyle.copyWith(
          fontSize: 24,
          fontWeight: FontWeightEnum.regular.font,
        ),
        headline6: primaryStyle.copyWith(
          fontSize: 20,
          fontWeight: FontWeightEnum.medium.font,
          letterSpacing: 0.15,
        ),
        subtitle1: primaryStyle.copyWith(
          fontSize: 16,
          fontWeight: FontWeightEnum.regular.font,
          letterSpacing: 0.15,
        ),
        subtitle2: primaryStyle.copyWith(
          fontSize: 14,
          fontWeight: FontWeightEnum.medium.font,
          letterSpacing: 0.1,
        ),
        bodyText1: primaryStyle.copyWith(
          fontSize: 16,
          fontWeight: FontWeightEnum.regular.font,
          letterSpacing: 0.5,
        ),
        bodyText2: primaryStyle.copyWith(
          fontSize: 14,
          fontWeight: FontWeightEnum.regular.font,
          letterSpacing: 0.25,
        ),
        button: primaryStyle.copyWith(
          fontSize: 14,
          fontWeight: FontWeightEnum.medium.font,
          letterSpacing: 1.25,
        ),
        caption: primaryStyle.copyWith(
          fontSize: 12,
          fontWeight: FontWeightEnum.regular.font,
          letterSpacing: 0.4,
        ),
        overline: primaryStyle.copyWith(
          fontSize: 10,
          fontWeight: FontWeightEnum.regular.font,
          letterSpacing: 1.5,
        ),
      );
}
