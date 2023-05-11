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
}

enum CardType { optima, rsk, bankAzia, aiylBank }
