import 'package:flutter/material.dart';
import 'package:hucel_core/hucel_core.dart';

class MainDrawerField extends StatelessWidget {
  const MainDrawerField({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 350,
      child: Padding(
        padding: context.padHorizontalN,
        child: Column(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 128,
              child: Icon(
                Icons.person,
                color: Colors.black,
                size: 64,
              ),
            ),
            SizedBox(height: context.heightXS),
            const ListTile(
              leading: Icon(
                Icons.home,
                size: 36,
              ),
              title: Text(
                "Home Page",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.settings,
                size: 36,
              ),
              title: Text(
                "About US",
                style: TextStyle(fontSize: 20, letterSpacing: 1.25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
