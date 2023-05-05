void main(List<String> args) {
  Map povtaz = {
    // 1: 'mustafa',
    // 2: 'syimyk',
    // 3: 'guljigit',
    4: 'islam',
    5: 'argen',
    6: 'semettei',
    7: 'kamchy'
  };

  Map povtaz2 = {
    1: 'mustafa',
    2: 'syimyk',
    3: 'guljigit',
  };

  povtaz.update(4, (value) {
    return "fasfassfafas";
  });
  print(povtaz);

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
}
