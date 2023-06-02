// import 'package:test/test.dart';

// import 'dart:indexed_db';

void main() {
  List list = [10, 20, 30, 5];

  list.sort();

  var a = list.last - list.first;

  // if(list[Index])
  list.forEach((element) {
    if (list[element]) print(element);
  });

  print(list);
  print(a);
}
