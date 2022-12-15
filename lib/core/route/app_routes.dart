import 'package:code_of_land/screen/authentication/login/login_screen.dart';
import 'package:code_of_land/screen/authentication/splash/splash_screen.dart';
import 'package:flutter/material.dart';

abstract class IAppRoutes {
  late Map<String, Widget Function(BuildContext context)> routes;
}

class AppRoutes implements IAppRoutes {
  static AppRoutes? _instance;
  static AppRoutes get instance {
    _instance ??= AppRoutes._init();
    return _instance!;
  }

  AppRoutes._init();

  static const String initRoute = '/';
  static const String splash = '/splash';
  static const String home = '/home';
  static const String login = '/login';
  static const String onBoard = '/onBoard';

  @override
  Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
    initRoute: (context) => const Scaffold(),
    splash: (context) => const SplashScreen(),
    login: (context) => const LoginScreen(),
  };
}
