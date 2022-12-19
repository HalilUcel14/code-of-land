import 'package:code_of_land/core/widget/screen_size_widget.dart';
import 'package:code_of_land/screen/main_screen.dart/components/drawer_field.dart';
import 'package:flutter/material.dart';
import 'package:hucel_core/hucel_core.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenSizeWidget(
        smallChild: Container(),
        mediumChild: Container(),
        largeChild: const MainScreenLargeChild(),
      ),
    );
  }
}

class MainScreenLargeChild extends StatelessWidget {
  const MainScreenLargeChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const MainDrawerField(),
        Container(
          width: 800,
          color: Colors.red,
          height: context.height,
        ),
      ],
    );
  }
}

// class CustomAppBar extends StatelessWidget {
//   const CustomAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.center,
//       child: Container(
//         margin: EdgeInsets.only(top: context.heightS),
//         padding: context.padHorizontalS,
//         decoration: BoxDecoration(
//           color: ColorConst.white,
//           borderRadius: BorderRadius.circular(context.heightS),
//           boxShadow: [
//             BoxShadow(
//               blurRadius: context.heightXS,
//               color: ColorConst.black54,
//               blurStyle: BlurStyle.solid,
//             ),
//           ],
//         ),
//         width: context.dynamicWidth(0.95),
//         height: NumberConst.mainAppBarSize,
//         child: _barChild(context),
//       ),
//     );
//   }

//   ///
//   ///
//   ///
//   Widget _barChild(BuildContext context) {
//     return Row(
//       children: [
//         Text(
//           LocalizationConst().applicationTitle,
//           style: TextStyle(color: Colors.amber[700], fontSize: context.heightS),
//         ),
//         const Spacer(),
//         Expanded(
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: LocalizationConst().mainAppBarItemList.length,
//             itemBuilder: (context, index) => Center(
//               child: GestureDetector(
//                 onTap: () {},
//                 child: Container(
//                   margin: const EdgeInsets.all(8.0),
//                   padding: const EdgeInsets.all(8.0),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8),
//                     color: Colors.orangeAccent,
//                   ),
//                   child: Text(
//                     LocalizationConst().mainAppBarItemList[index],
//                     style: const TextStyle(),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         const SizedBox(width: 24),
//         Container(
//           padding: context.padAllXS,
//           decoration: BoxDecoration(
//               color: Colors.yellowAccent,
//               borderRadius: BorderRadius.circular(24),
//               boxShadow: [
//                 BoxShadow(
//                   blurRadius: 16,
//                   blurStyle: BlurStyle.outer,
//                   color: ColorConst.black54,
//                 )
//               ]),
//           child: Row(
//             children: [
//               IconButton(onPressed: () {}, icon: const Icon(Icons.sunny)),
//               const SizedBox(width: 16),
//               IconButton(onPressed: () {}, icon: const Icon(Icons.language)),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
