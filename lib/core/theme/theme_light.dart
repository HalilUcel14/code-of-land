import 'package:code_of_land/core/theme/theme_helper/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hucel_core/hucel_core.dart';

class ThemeLight implements IApplicationTheme {
  static ThemeLight? _instance;
  static ThemeLight get instance {
    _instance ??= ThemeLight._init();
    return _instance!;
  }

  ThemeLight._init();

  @override
  ThemeData? theme = ThemeData.light().copyWith(
    textTheme: CustomTextTheme.instance.normalTheme,
    primaryTextTheme: CustomTextTheme.instance.primaryTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
