void main() {
  List list = [23, 34, 45, 67, 67, 78, 89, 89];

  LargestNum obj = LargestNum(list: list);
  print(obj.getlargest);
}

class LargestNum {
  List list = [];

  LargestNum({required this.list});

  int getlargest() {
    list.sort();

    for (int i = list.length - 1; i >= 0; i--) {
      if (i == list.length - 1) {
        if (list[i] != list[i - 1]) return list[i];
      }
      if (i == 0) {
        if (list[i] != list[i + 1]) return list[i];
      }
      if (list[i] != list[i - 1] && list[i] != list[i + 1]) {
        return list[i];
      }
    }

    return -1;
  }
}
