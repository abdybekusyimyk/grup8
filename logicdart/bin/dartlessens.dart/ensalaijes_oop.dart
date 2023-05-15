void main(List<String> args) {
  Dog dog = Dog();

  dog.breed = 'Apcharka';
  dog.size = 'Apcharka';
  dog.age = 2;
  dog.color = 'Apcharka';

  print(dog.getInfo());
}

class Dog {
  String? breed;
  String? size;
  int? age;
  String? color;

  void eat() {}

  void sleep() {}

  void sit() {}

  void run() {}

  String getInfo() {
    return "Bread is $breed, size -> $size, age -> $age, color -> $color";
  }
}
