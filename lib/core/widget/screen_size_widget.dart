import 'package:flutter/material.dart';
import 'package:hucel_core/hucel_core.dart';

class ScreenSizeWidget extends StatelessWidget {
  const ScreenSizeWidget(
      {super.key,
      this.size = 800,
      required this.smallChild,
      required this.largeChild});
  final double size;
  final Widget smallChild;
  final Widget largeChild;
  //
  @override
  Widget build(BuildContext context) {
    return context.width > size ? largeChild : smallChild;
  }
}
