void main() {
  List numbers = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
  ];

  numbers.remove(9);
  numbers.removeLast();

  print(numbers);

  List numbers2 = [
    11,
    22,
    33,
    44,
    55,
    66,
    88,
    99,
  ];

  numbers.addAll(numbers2);
  numbers.addAll([2, 3, 4, 5]);

  print(numbers);

  numbers.insert(
    0,
    1111111111,
  );
  print(numbers);

  numbers.insertAll(0, numbers2);
  print(numbers);

  numbers[0] = 999;
  print(numbers);

  numbers.replaceRange(0, 5, [1, 4, 5, 6, 99, 66]);
  print(numbers);
}
