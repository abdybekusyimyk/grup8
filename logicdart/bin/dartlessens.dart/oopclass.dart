// // in kapsulatsia

// void main(List<String> args) {
//   Person person1 = Person("Syimyk", 20);
//   print(person1.getName());

//   person1.setName("Musu");

//   print(person1.getName());
//   print(person1.name);

//   person1.name = 'Guljigit';
//   print(person1.name);
// }

// class Person {
//   String name;
//   int age;

//   Person(this.name, this.age);

//   String getName() {
//     return name;
//   }

//   void setName(String name) {
//     this.name = name;
//   }

//    int getAge() {
//     return age;
//   }

//   void setAge(int age) {
//     this.age = age;
//   }
// }

void main(List<String> args) {
  Person person = Person('Syimyk', 20);

  person.aName = 'musu'; // setter
  person.aName;

  ///           // getter
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  String get aName {
    return name;
  }

  set aName(String name) {
    this.name = name;
  }
}
