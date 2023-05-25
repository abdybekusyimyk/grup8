void main(List<String> args) {
  Future.delayed(Duration(seconds: 3), () {
    print('birnersi atkar');
  });

  for (int i = 0; i <= 10; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('i ----->  $i');
    });
  }

  // !(true) --> false,   !(false) --> true
}
