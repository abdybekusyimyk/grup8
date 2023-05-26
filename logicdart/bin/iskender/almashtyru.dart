void main() {
  int a = 44;
  int b = 5454;

  // int c = a;
  // a = b;
  // b = c;

  b = b - a;
  a = a + b;
  b = a - b;

  print(a);
  print(b);
}
