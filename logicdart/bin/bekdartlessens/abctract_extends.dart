void main(List<String> args) {
  Mashina mashina = Mashina();
  // mashina.name;
  print(mashina.start(4, 4));

  Matiz matiz = Matiz();

  print(matiz.name);
  print(matiz.start(0, 0));
}

class Mashina {
  int? san;

  int start(int a, int b) {
    return a + b;
  }

  void name(String aty) {
    print('Syimyk $name');
  }
}

class Matiz extends Mashina {
  @override
  // TODO: implement san
  int? get san => super.san;

  @override
  int start(int a, int b) {
    // TODO: implement start
    return super.start(9, 9);
    // return
  }

  @override
  void name(String aty) {
    // TODO: implement name
    super.name(aty);

    print("MAtiz class ........................");
  }
}

class Tico implements Mashina {
  @override
  int start(int a, int b) {
    // TODO: implement start
    throw UnimplementedError();
  }

  @override
  void name(String aty) {
    // TODO: implement name
  }

  @override
  // TODO: implement san
  int? get san => throw UnimplementedError();

  @override
  set san(int? _san) {
    // TODO: implement san
  }
}
