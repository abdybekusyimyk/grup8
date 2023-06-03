// void main() {
//   // listin ichindegi sandardyn en chonunan en kichinesin kemitinizder

//   List list = [20, 40, 30];

//   print(list);
// }

// import 'package:test/test.dart';

void main(List<String> args) {
  List geeklist = [100, 10, 5, 900];

  var a = geeklist[0];
  var b = geeklist[0];

  geeklist.forEach((element) => {
        if (element > a) {a = element},
        if (element < b) {b = element}
      });

  int res = a - b;

  print(geeklist);
  print(res);
}
