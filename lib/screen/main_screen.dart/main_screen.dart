import 'package:code_of_land/core/constants/color_constant.dart';
import 'package:code_of_land/core/constants/number_constant.dart';
import 'package:code_of_land/screen/page/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hucel_core/hucel_core.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const HomeScreen(),
          Positioned(
            top: context.heightXS,
            child: const CustomAppBar(),
          ),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(top: context.heightS),
        padding: context.padHorizontalS,
        decoration: BoxDecoration(
          color: ColorConst.white,
          borderRadius: BorderRadius.circular(context.heightS),
          boxShadow: [
            BoxShadow(
              blurRadius: context.heightXS,
              color: ColorConst.black54,
              blurStyle: BlurStyle.solid,
            ),
          ],
        ),
        width: context.dynamicWidth(0.95),
        height: NumberConst.mainAppBarSize,
        child: _barChild(context),
      ),
    );
  }

  ///
  ///
  ///
  Widget _barChild(BuildContext context) {
    return Row(
      children: [
        Text(
          'Code Of Land',
          style: TextStyle(color: Colors.amber[700], fontSize: context.heightS),
        ),
      ],
    );
  }
}
