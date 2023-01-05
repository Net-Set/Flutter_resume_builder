import 'package:flutter/material.dart';

class MyNotifier extends ValueNotifier<bool> {
  MyNotifier(bool value) : super(value);

  void changeState() {
    value = !value;
    notifyListeners();
  }
}
