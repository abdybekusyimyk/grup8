void main(List<String> args) {
  Car dadcar = Car('Syimyk'); // value type
  Car childcar = dadcar; // reference type

  childcar.name = 'musu';

  print(dadcar.name);
  print(childcar.name);
}

class Car {
  String name;

  Car(this.name);
}
