import 'dart:ui';

import 'package:flutter/material.dart';

class MainPageViewModel extends ChangeNotifier {
  String? observableText;

  void onTextChanged(String text){
    this.observableText = text;
    notifyListeners();
  }

  Color get color {
    switch (observableText) {
      case 'red':
        return Colors.red;
      case 'yellow':
        return Colors.yellow;
      case 'blue':
        return Colors.blue;
      default:
        return Colors.white;
    }
  }
}