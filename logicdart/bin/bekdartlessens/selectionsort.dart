void main(List<String> args) {
  List<int> a = [9, 8, 7, 6, 5, 4, 3, 2, 1, 0];
  print(a);

  // selection sort
  int len = a.length;
  for (int i = 0; i < len; i++) {
    int minIndex = i;

    for (int j = i; j < len; j++) {
      if (a[j] < a[minIndex]) {
        minIndex = j;
      }
    }
    int temp = a[i];
    a[i] = a[minIndex];
    a[minIndex] = temp;
  }

  print(a);
}
