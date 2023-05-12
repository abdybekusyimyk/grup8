// void main(List<String> args) {
//   Map povtaz = {
// 1: 'mustafa',
// 2: 'syimyk',
// 3: 'guljigit',
//   4: 'islam',
//   5: 'argen',
//   6: 'semettei',
//   7: 'kamchy'
// };

// Map povtaz2 = {
//   1: 'mustafa',
//   2: 'syimyk',
//   3: 'guljigit',
// };

// povtaz.update(4, (value) {
//   return "fasfassfafas";
// });
// print(povtaz);

// povtaz.updateAll((key, value) {
//   return "kanat";
// });
// print(povtaz);

// povtaz.addAll(povtaz2);
// print(povtaz);
// povtaz[4] = true;
// print(povtaz);

// print(povtaz[1]);
// print(povtaz.length);
// print(povtaz.keys);
// print(povtaz.values);
// print(povtaz.containsKey(key));
// povtaz.containsValue()
// povtaz.containsValue(value)
// povtaz.removeWhere((key, value) {
//   return key <= 3;
// });

// print(povtaz);
// povtaz.clear();
// print(povtaz);
// }

// void main(List<String> args) {
//   Map pov = <String, int>{
//     "1": 111,
//     "2": 222,
//   };

//   Map pov2 = <String, int>{
//     "3": 333,
//     "4": 444,
//   };

//   Map pov3 = <String, int>{
//     "5": 555,
//     "6": 666,
//   };

//   Map res = {}
//     ..addAll(pov)
//     ..addAll(pov2)
//     ..addAll(pov3);

//   // print(res);

//   Map res2 = Map.from(pov)
//     ..addAll(pov2)
//     ..addAll(pov3);

//   // print(res2);

//   Map res3 = {...pov, ...pov2, ...pov3};

//   print(res3);
// }

// void main(List<String> args) {
//   Map map = {1: "one", 2: "two", 3: "three"};

//   map.forEach((key, value) {
//     print('$key ==> $value');
//   });
// }

// void main(List<String> args) {
//   var a = 'salam Syimyk';

//   for (int i = 0; i < a.length; i++) {
//     print(a.codeUnitAt(i));
//   }

//   // print(a.codeUnits);
//   // print(a.codeUnitAt(0));

//   // print(a.runes);
// }

void main(List<String> args) {
  // String a = 'flutter';

  // a.runes.forEach((int rune) {
  //   print(rune);
  // });

  // a.runes.forEach((int rune) {
  //   var letter = String.fromCharCode(rune);
  //   print(letter);
  // });s

  // Runes input = Runes('\u{1f605}');
  // print(String.fromCharCodes(input));

  // List list = [83, 121, 105, 121, 107];
  // String text = "";

  // for (var i in list) {
  //   text = text + String.fromCharCode(i);
  // }

  // print(text);

  // var text = "Abdybek UULU Syimyk";
  // var count = 0;

  // for (int j = 0; j < text.length; j++) {
  //   if (text.codeUnitAt(j) >= 65 && text.codeUnitAt(j) <= 90) {
  //     count++;
  //   }
  // }

  // print(count);

  // faktarial  1! * 2! * 3! * 4! * 5!

  int res = factarial(9);
  print(res);
}

int factarial(int x) {
  if (x == 0) return 1;
  return x * factarial(x - 1);
}
