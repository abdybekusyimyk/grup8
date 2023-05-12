// void main(List<String> args) {
//   var selected = CardType.rsk;

//   // basylganda
//   selected = CardType.aiylBank;

//   switch (selected) {
//     case CardType.optima:
//       {
//         print('optima.............');
//       }
//       break;
//     case CardType.rsk:
//       {
//         print('rsk.............');
//       }
//       break;
//     case CardType.bankAzia:
//       {
//         print('bankAzia.............');
//       }
//       break;
//     case CardType.aiylBank:
//       {
//         print('aiylBank.............');
//       }
//       break;
//   }
//   print('<==========================================>');
//   for (int j = 0; j < CardType.values.length; j++) {
//     print('value : ${CardType.values[j]},index : ${CardType.values[j].index}');
//   }
// }

// enum CardType { optima, rsk, bankAzia, aiylBank }

//==================================================

enum Time {
  hour,
  day,
  week,
  month,
  year,
}

void main() {
  print(Time.values);
  print('');
  print(timeToString(Time.week));
}

String timeToString(Time time) {
  switch (time) {
    case Time.hour:
      return '1h';
    case Time.day:
      return '1d';
    case Time.week:
      return '1W';
    case Time.month:
      return '1M';
    case Time.year:
      return '1y';
  }
}
