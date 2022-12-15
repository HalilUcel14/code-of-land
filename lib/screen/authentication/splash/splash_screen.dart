import 'dart:async';

import 'package:code_of_land/core/enum/assets_enum.dart';
import 'package:code_of_land/core/route/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:hucel_core/hucel_core.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // Starter Time Zone Then Function
    Timer(context.durationXXL, navigateOtherPage);
    super.initState();
  }

  void navigateOtherPage() async {
    await Navigator.pushNamedAndRemoveUntil(
        context, AppRoutes.login, (route) => false);
  }

  ///
  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _image(),
            SizedBox(height: context.heightS),
            Text(
              'Code Of Land',
              style: TextStyle(fontSize: context.heightN),
            ),
          ],
        ),
      ),
    );
  }

  Image _image() {
    return Image(
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        return Padding(
          padding: context.padAllXS,
          child: child,
        );
      },
      loadingBuilder: (context, child, loadingProgress) {
        return loadingProgress == null
            ? child
            : const CircularProgressIndicator();
      },
      errorBuilder: (context, error, stackTrace) {
        return Text('Some Error Occurred $error - $stackTrace');
      },
      image: AssetImage(
        AssetsEnum.island_256.splashImage,
      ),
    );
  }
}
