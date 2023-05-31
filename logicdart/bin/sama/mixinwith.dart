// import '../dartlessens.dart/oopclass.dart';

void main(List<String> args) {
  Person bala = Child();
  // print(bala.printin);
  bala.printin();

  // Person adam = Person();
}

class Child implements Person {
  String name = '';

  @override
  void printin() {
    // TODO: implement printin
  }
}

mixin Person {
  void printin() {
    print('person >>>>>>');
  }
}
