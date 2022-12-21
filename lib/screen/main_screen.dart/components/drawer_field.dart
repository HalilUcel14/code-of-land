import 'package:code_of_land/core/theme/color_theme.dart';
import 'package:code_of_land/core/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';
import 'package:hucel_core/hucel_core.dart';
import 'package:provider/provider.dart';

import 'drawer_field_provider.dart';

const double maxWidth = 300;
const double minWidth = 60;

class MainDrawerField extends StatefulWidget {
  const MainDrawerField({super.key});

  @override
  State<MainDrawerField> createState() => _MainDrawerFieldState();
}

class _MainDrawerFieldState extends State<MainDrawerField>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> widthSizeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: context.durationM,
    );
    widthSizeAnimation = Tween<double>(begin: maxWidth, end: minWidth)
        .animate(_animationController);
  } // initState

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, widget) => Container(
        width: widthSizeAnimation.value,
        color: ColorsTheme.instance.drawerBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50.0),
            CollapsingListTile(
              title: 'Halil Ücel',
              icon: Icons.person_pin,
              animationController: _animationController,
            ),
            SizedBox(
              height: context.height * 0.6,
              child: ListView.builder(
                itemCount: navigationItems.length,
                itemBuilder: (context, index) {
                  return CollapsingListTile(
                    title: navigationItems[index].title,
                    icon: navigationItems[index].icon,
                    animationController: _animationController,
                  );
                },
              ),
            ),
            const Spacer(),
            IconButton(
              padding: const EdgeInsets.only(right: 25),
              onPressed: () {
                context.read<DrawerAnimationProvider>().changeIsOpenClose();
                if (context.read<DrawerAnimationProvider>().isOpenClose) {
                  _animationController.forward();
                } else {
                  _animationController.reverse();
                }
              },
              icon: AnimatedIcon(
                icon: AnimatedIcons.close_menu,
                progress: _animationController,
                color: Colors.white,
                size: 50.0,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class CollapsingListTile extends StatefulWidget {
  const CollapsingListTile(
      {super.key,
      required this.title,
      required this.icon,
      required this.animationController});

  final String title;
  final IconData icon;
  final AnimationController animationController;

  @override
  State<CollapsingListTile> createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  late Animation<double> _widthAnimation;
  @override
  void initState() {
    super.initState();
    _widthAnimation = Tween<double>(begin: maxWidth, end: minWidth)
        .animate(widget.animationController);
  } // İnitState

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _widthAnimation.value,
      margin: context.padAllXS,
      child: Row(
        children: [
          Icon(
            widget.icon,
            color: Colors.white30,
            size: 36.0,
          ),
          _widthAnimation.value > maxWidth * 0.8
              ? Column(
                  children: [
                    const SizedBox(width: 25.0),
                    Text(
                      widget.title,
                      style: TextStyleTheme.instance.listTitleDefaultTextStyle,
                    ),
                  ],
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
];
