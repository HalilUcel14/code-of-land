import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          FlutterLogo(
            size: 48,
          ),
          Text('Splash Screen '),
          Text('Test')
        ],
      ),
    );
  }
}
