void main(List<String> args) {
  List<int> a = [
    12,
    4,
    5,
    76,
    87,
    97,
    6,
    98,
    125,
    67,
    75856,
    65,
    78,
    56756,
    567,
    35
  ];
  print(a);

  // babble sort
  int l = a.length;
  for (int i = 0; i < l; i++) {
    print('i------> $i');
    for (int j = 0; j < l - 1; j++) {
      print('j..... $j');
      if (a[j] > a[j + 1]) {
        print('if ---a$j > a[${j + 1}]');
        int temp = a[j];
        a[j] = a[j + 1];
        a[j + 1] = temp;
      }
    }
  }

  print(a);
}
