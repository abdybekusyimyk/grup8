void main(List<String> args) {
  var selected = CardType.rsk;

  // basylganda
  selected = CardType.aiylBank;

  switch (selected) {
    case CardType.optima:
      {
        print('optima.............');
      }
      break;
    case CardType.rsk:
      {
        print('rsk.............');
      }
      break;
    case CardType.bankAzia:
      {
        print('bankAzia.............');
      }
      break;
    case CardType.aiylBank:
      {
        print('aiylBank.............');
      }
      break;
  }
  print('<==========================================>');
  for (int j = 0; j < CardType.values.length; j++) {
    print('value : ${CardType.values[j]},index : ${CardType.values[j].index}');
  }
}

enum CardType { optima, rsk, bankAzia, aiylBank }
