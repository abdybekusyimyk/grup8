void main() {
  Car car = Car('Tiko', 'blsck', 2);

  car
    ..start()
    ..stop()
    ..showTeteils();

  ////  ushunun kyskartylgan joluu

  // car.start();
  // car.stop();
  // car.showTeteils();
}

class Car {
  String name;
  String color;
  int tn;

  Car(this.name, this.color, this.tn);

  void start() {
    print('Bashtaldy......');
  }

  void stop() {
    print('Toktoduu......');
  }

  void showTeteils() {
    print('Name ......--> $name');
  }
}
