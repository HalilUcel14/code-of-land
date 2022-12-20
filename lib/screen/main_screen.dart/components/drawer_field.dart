import 'package:code_of_land/core/theme/color_theme.dart';
import 'package:code_of_land/core/theme/textstyle_theme.dart';
import 'package:flutter/material.dart';
import 'package:hucel_core/hucel_core.dart';
import 'package:provider/provider.dart';

import 'drawer_field_provider.dart';

class MainDrawerField extends StatefulWidget {
  const MainDrawerField({super.key});

  @override
  State<MainDrawerField> createState() => _MainDrawerFieldState();
}

class _MainDrawerFieldState extends State<MainDrawerField>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // return oldDrawer(context);
    return Container(
      width: 250,
      color: ColorsTheme.instance.drawerBackgroundColor,
      child: Column(
        children: [
          const SizedBox(height: 50.0),
          const CollapsingListTile(
            title: 'Halil Ücel',
            icon: Icons.person_pin,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: navigationItems.length,
              itemBuilder: (context, index) {
                return CollapsingListTile(
                  title: navigationItems[index].title,
                  icon: navigationItems[index].icon,
                );
              },
            ),
          ),
          IconButton(
              onPressed: () {
                context.read<DrawerProvider>().changeIsOpenClose();
              },
              icon: const Icon(Icons.chevron_left,
                  color: Colors.white, size: 50.0)),
          const SizedBox(height: 50.0),
        ],
      ),
    );
  }
}

class CollapsingListTile extends StatefulWidget {
  const CollapsingListTile(
      {super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  State<CollapsingListTile> createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  double maxWidth = 250.0;
  double minWidth = 70.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: context.padAllXS,
      child: Row(
        children: [
          Icon(
            widget.icon,
            color: Colors.white30,
            size: 38.0,
          ),
          const SizedBox(width: 10.0),
          Text(widget.title,
              style: TextStyleTheme.instance.listTitleDefaultTextStyle)
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


///
///

//  Drawer oldDrawer(BuildContext context) {
//     return Drawer(
//       width: 350,
//       child: Padding(
//         padding: context.padHorizontalN,
//         child: Column(
//           children: [
//             const CircleAvatar(
//               backgroundColor: Colors.transparent,
//               radius: 128,
//               child: Icon(
//                 Icons.person,
//                 color: Colors.black,
//                 size: 64,
//               ),
//             ),
//             SizedBox(height: context.heightXS),
//             const ListTile(
//               leading: Icon(
//                 Icons.home,
//                 size: 36,
//               ),
//               title: Text(
//                 "Home Page",
//                 style: TextStyle(fontSize: 20),
//               ),
//             ),
//             const ListTile(
//               leading: Icon(
//                 Icons.settings,
//                 size: 36,
//               ),
//               title: Text(
//                 "About US",
//                 style: TextStyle(fontSize: 20, letterSpacing: 1.25),
//               ),
//             ),
//             const Divider(),
//           ],
//         ),
//       ),
//     );