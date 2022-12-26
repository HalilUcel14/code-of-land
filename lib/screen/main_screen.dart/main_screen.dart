import 'package:code_of_land/core/constants/numeric_constant.dart';
import 'package:flutter/material.dart';
import 'package:hucel_core/hucel_core.dart';

import '../../core/theme/color_theme.dart';
import '../page/home/home_screen.dart';
import 'drawer/drawer_field.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorsTheme.instance.drawerBackgroundColor,
          centerTitle: true,
          title: const Text('Code Of Land'),
        ),
        drawer: context.width < NumericConst().smallScreenSize
            ? const MainDrawerField()
            : null,
        body: const MainScreenChild(),
      ),
    );
  }
}

class MainScreenChild extends StatelessWidget {
  const MainScreenChild({super.key});

  @override
  Widget build(BuildContext context) {
    // Ekran 550 height Altında Bozuluyor.
    return Row(
      children: [
        context.width > NumericConst().smallScreenSize
            ? const MainDrawerField()
            : const SizedBox.shrink(),
        const HomeScreen(),
      ],
    );
  }
}
