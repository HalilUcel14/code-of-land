import 'package:flutter/material.dart';
import 'package:hucel_core/hucel_core.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _welcomePage(context),
            Container(
              height: 500,
              color: Colors.green,
            ),
            Container(
              height: 600,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }

  Widget _welcomePage(context) {
    return MultiBuilder(builder:
        (context, deviceHeight, deviceWidth, boxConstraints, orientation) {
      return Container(
        height:
            boxConstraints.maxWidth > 800 ? boxConstraints.maxWidth * 0.6 : 480,
        color: Colors.red,
      );
    });
  }
}
