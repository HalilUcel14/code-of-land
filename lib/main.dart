import 'package:code_of_land/core/theme/theme_dark.dart';
import 'package:code_of_land/core/theme/theme_light.dart';
import 'package:code_of_land/firebase_options.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hucel_core/hucel_core.dart';
import 'package:provider/provider.dart';

import 'core/route/app_routes.dart';

late ThemeManager themeManager;
late SharedManager sharedManager;

Future<void> main() async {
  //
  WidgetsFlutterBinding.ensureInitialized();
  //
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //
  await EasyLocalization.ensureInitialized();
  //
  ErrorWidget.builder =
      (FlutterErrorDetails details) => ErrorMaterialWidget(details: details);
  //
  //
  ThemeManager.themeDataDark = ThemeDark.instance.theme;
  ThemeManager.themeDataLight = ThemeLight.instance.theme;
  themeManager = ThemeManager.instance;
  sharedManager = SharedManager.instance;
  //
  //
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
  ));

  runApp(_easyLocalization());
}

EasyLocalization _easyLocalization() => EasyLocalization(
      supportedLocales: [
        EasyLocaleConst.instance.enLocale,
        EasyLocaleConst.instance.trLocale
      ],
      path: EasyLocaleConst.instance.localePath,
      saveLocale: true,
      fallbackLocale: EasyLocaleConst.instance.enLocale,
      child: _multiProvider(),
    );

MultiProvider _multiProvider() => MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeManager.instance,
        )
      ],
      child: const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Web Scrolling
      scrollBehavior: WebForScrollBehavior(),
      debugShowCheckedModeBanner: false,
      //
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      //
      theme: context.themeProvider,
      //
      builder: ((context, child) => Stack(
            children: [
              child ?? const SizedBox.shrink(),
              const ConnectivityWidget(),
            ],
          )),
      //
      initialRoute: AppRoutes.splash,
      routes: AppRoutes.instance.routes,
    );
  }
}
