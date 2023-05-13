void main(List<String> args) {
  try {
    print(divide(24, 0));
  } catch (e) {
    print('error --> $e');
    print('kaktta');
  }
}

int divide(int a, int b) {
  return a ~/ b;
}
