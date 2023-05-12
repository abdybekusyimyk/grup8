void main(List<String> args) {
  showMe(5, 0);
  showMe('dart', 'flutter');

  calc(10, 5);
  calc(1.1, 1.1);
}

void showMe<T>(T a, T b) {
  print('a---------->$a');
  print('b---------->$b');
}

void calc<T extends num>(T z, T x) {
  print(z + x);
}
