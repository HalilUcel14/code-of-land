import 'package:flutter/material.dart';
import 'package:hucel_core/hucel_core.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final String background =
      "https://firebasestorage.googleapis.com/v0/b/code-of-land.appspot.com/o/assets%2Fimage%2Fwelcome_background.jpg?alt=media&token=bcef1011-2f6e-4f0d-8adf-e99979506289";

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _welcomePage(context),
            Container(
              height: 500,
              color: Colors.green,
            ),
            Container(
              height: 600,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }

  // Widget _welcomePage(context) {
  //   return MultiBuilder(
  //       builder: (context, height, width, constrain, orientation) {
  //     return SizedBox(
  //       height: constrain.maxWidth > 800 ? constrain.maxWidth * 0.6 : 480,
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           const Expanded(
  //               child: Image(
  //                   image: NetworkImage('https://picsum.photos/600/360'))),
  //           Text(
  //             'Hello, Welcome to my site, I will help you for better than development on flutter dart languages.',
  //             style: context.headline5,
  //             textAlign: TextAlign.center,
  //           )
  //         ],
  //       ),
  //     );
  //   });
  // }

  Widget _welcomePage(context) {
    return HomeResponsiveChild(
        child: LayoutBuilder(builder: (context, constraints) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(flex: 4, child: Image(image: NetworkImage(background))),
          Expanded(
            child: Text(
              'Hello, Welcome to my site, I will help you for better than development ıo',
              style: context.headline5,
              textAlign: TextAlign.center,
            ),
          )
        ],
      );
    }));
  }
}

class HomeResponsiveChild extends MultiBuilder {
  HomeResponsiveChild({super.key, required Widget child})
      : super(builder: (context, height, width, constraints, orientation) {
          return SizedBox(
            height:
                constraints.maxWidth > 800 ? constraints.maxWidth * 0.6 : 480,
            child: child,
          );
        });
}
