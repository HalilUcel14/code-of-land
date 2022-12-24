import 'package:code_of_land/core/constants/numeric_constant.dart';
import 'package:code_of_land/core/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:hucel_core/hucel_core.dart';
import 'package:provider/provider.dart';

import '../../../core/enum/assets_enum.dart';
import 'drawer_field_listview.dart';
import 'drawer_provider.dart';

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
    widthSizeAnimation = Tween<double>(
      begin: NumericConst().maxDrawerWidth,
      end: NumericConst().minDrawerWidth,
    ).animate(_animationController);
  } // initState

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, widget) => Container(
        width: widthSizeAnimation.value,
        color: ColorsTheme.instance.drawerBackgroundColor,
        child: ColumnWithSpacing(
          spacing: 0,
          children: [
            // Flex 3
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  SizedBox(height: context.heightM),
                  _drawerProfile(context),
                ],
              ),
            ),
            // Flex 6
            Expanded(flex: 6, child: _drawerList(context)),
            // Flex 1
            Expanded(child: _drawerAnimateButton(context))
          ],
        ),
      ),
    );
  }

  IconButton _drawerAnimateButton(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.only(right: NumericConst().defaultPadding),
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
        size: NumericConst().defaultIconSize,
      ),
    );
  }

  SizedBox _drawerList(BuildContext context) {
    return SizedBox(
      height: context.height * 0.4,
      width: double.infinity,
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
    );
  }

  Column _drawerProfile(BuildContext context) {
    return Column(
      children: [
        Container(
          height: context.height * 0.15,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                AssetsEnum.island_256.splashImage,
              ),
            ),
          ),
        ),
        //
        widthSizeAnimation.value > NumericConst().maxDrawerWidth * 0.8
            ? Column(
                children: [
                  Text(
                    "Roger Hoffman",
                    style: context.headline6!.copyWith(color: Colors.white),
                  ),
                  Text(
                    'San Francisco, CA',
                    style: context.bodyText1!.copyWith(color: Colors.grey),
                  ),
                ],
              )
            : const SizedBox(),
      ],
    );
  }
}
