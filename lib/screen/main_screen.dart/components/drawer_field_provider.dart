import 'package:flutter/material.dart';

class DrawerProvider extends ChangeNotifier {
  bool _isOpenClose = true;
  bool get isOpenClose => _isOpenClose;

  void changeIsOpenClose() {
    _isOpenClose = !_isOpenClose;
    notifyListeners();
  }
}
