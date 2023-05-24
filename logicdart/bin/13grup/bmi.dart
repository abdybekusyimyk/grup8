// static
// const

// final
//

void main(List<String> args) {
  Adam adam = Adam(
    'feruza',
    18
  );

  // print(Adam('sgfisbidfbsid', 20).aty);
  // print(Adam('sgfisbidfbsid', 47384384).jashy);

  print(adam.aty);
  print(adam.jashy);

  print(Adam.appbartext);
  
}

class Adam {
 final String aty;
  int jashy;

  static const String appbartext = 'appbartext';

  Adam(
    this.aty,
    this.jashy,
  );
}
