void main(List<String> args) {
  List<List<int>> list = [
    [12, 14, 15, 17, 45, 765, 75],
    [5, 14, 15, 17, 45, 765, 75]
  ];

  for (int j = 0; j < list.length; j++) {
    int min = list[0][0];
    for (int i = 0; i < list.length; i++) {
      int b = list[j][i];
      if (b < min) {
        min = b;
      }
    }
    print(min);
  }

  // en kichine sanyn tabysh maseleleri
}
