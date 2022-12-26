import 'package:flutter/material.dart';

import '../../core/widget/screen_size_widget.dart';
import '../page/home/home_screen.dart';
import 'drawer/drawer_field.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ScreenSizeWidget(
        smallChild: MainScreenLargeChild(),
        mediumChild: MainScreenLargeChild(),
        largeChild: MainScreenLargeChild(),
      ),
    );
  }
}

class MainScreenLargeChild extends StatelessWidget {
  const MainScreenLargeChild({super.key});

  @override
  Widget build(BuildContext context) {
    // Ekran 550 height Altında Bozuluyor.
    return Row(
      children: const [
        MainDrawerField(),
        HomeScreen(),
      ],
    );
  }
}
