void main(List<String> args) {
  int san = 30;
  int boluchusan = 7;

  int summa = 0;
  int kaldyk = 0;
  for (int i = boluchusan; i <= san; i += boluchusan) {
    // print(i);
    summa += 1;
    // if (i != san) {
    //   i += san;
    //   kaldyk += 1;
    // }
  }
  print(summa);
  print(kaldyk);
  print('$summa.$kaldyk');
}
