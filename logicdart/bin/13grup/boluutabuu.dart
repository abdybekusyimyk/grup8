import 'dart:io';

void main(List<String> args) {
  int san = int.parse(stdin.readLineSync()!);
  print('<=>');
  int boluchy = int.parse(stdin.readLineSync()!);

  int summa = 0;
  for (int i = boluchy; i <= san; i += boluchy) {
    summa = summa + 1;
    // print(i);
  }
  print('<------>');
  print(summa);
}
