import 'package:flutter/material.dart';
import 'package:hucel_core/hucel_core.dart';

class ScreenSizeWidget extends StatelessWidget {
  const ScreenSizeWidget({
    super.key,
    this.lowSize = 800,
    this.highSize = 1200,
    required this.smallChild,
    required this.mediumChild,
    required this.largeChild,
  });
  //
  final double lowSize;
  final double highSize;
  final Widget smallChild;
  final Widget mediumChild;
  final Widget largeChild;
  //
  @override
  Widget build(BuildContext context) {
    return context.width > highSize
        ? largeChild
        : context.width > lowSize
            ? mediumChild
            : smallChild;
  }
}
