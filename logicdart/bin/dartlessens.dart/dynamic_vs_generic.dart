void main(List<String> args) {
  // var sample = Sample();
  // sample.add1('hello');
  // sample.add1(3); // error
  // print(sample);

  var sample2 = Sample<String>();
  sample2.add2('hello');
  sample2.add2(3); // Ok
  // print(sample2);
}

class Sample<T> {
  var list1 = [];
  List list2 = [];

  void add1(T element) {
    list1.add(element);
    // print(list1);
  }

  void add2(dynamic element) {
    list2.add(element);
    // print(list2);
  }
}
