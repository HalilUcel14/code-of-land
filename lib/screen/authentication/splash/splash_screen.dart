import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          FlutterLogo(),
          Text('Splash Screen '),
        ],
      ),
    );
  }
}
