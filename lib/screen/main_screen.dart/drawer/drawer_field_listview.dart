import 'package:code_of_land/core/constants/numeric_constant.dart';
import 'package:flutter/material.dart';
import 'package:hucel_core/hucel_core.dart';

import '../../../core/theme/theme_helper/textstyle_theme.dart';

class CollapsingListTile extends StatefulWidget {
  const CollapsingListTile(
      {super.key,
      required this.title,
      required this.icon,
      required this.animationController,
      this.onTap});

  final String title;
  final IconData icon;
  final void Function()? onTap;
  final AnimationController animationController;

  @override
  State<CollapsingListTile> createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  late Animation<double> _widthAnimation;
  @override
  void initState() {
    super.initState();
    _widthAnimation = Tween<double>(
      begin: NumericConst().maxDrawerWidth,
      end: NumericConst().minDrawerWidth,
    ).animate(widget.animationController);
  } // İnitState

  @override
  Widget build(BuildContext context) {
    return ClickableContainer(
      onTap: widget.onTap,
      width: _widthAnimation.value,
      margin: context.padVerticalS + context.padHorizontalXS,
      child: Row(
        children: [
          Icon(
            widget.icon,
            color: Colors.white30,
            size: NumericConst().defaultIconSize,
          ),
          _widthAnimation.value > NumericConst().maxDrawerWidth * 0.8
              ? Text(
                  widget.title,
                  style: TextStyleTheme.instance.listTitleDefaultTextStyle,
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}

class NavigationModel {
  String title;
  IconData icon;

  NavigationModel({required this.icon, required this.title});
}

List<NavigationModel> navigationItems = [
  NavigationModel(icon: Icons.insert_chart, title: 'Dashboard'),
  NavigationModel(icon: Icons.error, title: 'Errors'),
  NavigationModel(icon: Icons.search, title: 'Search'),
  NavigationModel(icon: Icons.notifications, title: 'Notification'),
  NavigationModel(icon: Icons.settings, title: 'Settings'),
  NavigationModel(icon: Icons.logout, title: 'Log Out'),
];
