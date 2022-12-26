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
    return MultiBuilder(
        builder: (context, height, width, constrain, orientation) {
      return SizedBox(
        height: constrain.maxWidth > 800 ? constrain.maxWidth * 0.6 : 480,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
                child: Image(
                    image: NetworkImage('https://picsum.photos/600/360'))),
            Text(
              'Hello, Welcome to my site, I will help you for better than development on flutter dart languages.',
              style: context.headline5,
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    });
  }
}
