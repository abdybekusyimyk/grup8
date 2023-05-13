typedef Cals(int a, int b);

void main(List<String> args) {
  Cals cals = add;

  print(cals(5, 4));

  cals = remove;
  print(remove(4, 2));
}

int add(int a, int b) {
  return a + b;
}

int remove(int a, int b) {
  return a - b;
}
