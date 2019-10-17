import 'package:flutter/material.dart';

class AppStorage with ChangeNotifier{
  int clickCount = 0;
  
  void increaseClickCount() {
    clickCount++;
    notifyListeners();
  }

}