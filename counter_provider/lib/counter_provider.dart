import 'dart:math';

import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int san = 0;

  increament() {
    san++;
    notifyListeners();
    // notifyListeners();
    print('+++++>  $san');
  }

  decriment() {
    san--;
    notifyListeners();
    // notifyListeners();
    print('------>  $san');
  }
}
