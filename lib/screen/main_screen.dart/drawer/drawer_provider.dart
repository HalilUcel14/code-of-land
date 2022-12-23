import 'package:flutter/material.dart';

class DrawerProvider extends ChangeNotifier {}

class DrawerAnimationProvider extends ChangeNotifier {
  static DrawerAnimationProvider? _instance;
  static DrawerAnimationProvider get instance {
    _instance ??= DrawerAnimationProvider._init();
    return _instance!;
  }

  DrawerAnimationProvider._init();

  bool _isOpenClose = false;
  bool get isOpenClose => _isOpenClose;

  void changeIsOpenClose() {
    _isOpenClose = !_isOpenClose;
    notifyListeners();
  }
}
