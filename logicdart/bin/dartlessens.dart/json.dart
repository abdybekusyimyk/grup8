import 'dart:convert';

void main(List<String> args) {
  String json = '{"name": "Syimyk", "age": 20}';
  Map<String, dynamic> map = jsonDecode(json);
  Person person = Person.fromjson(map);

  print(person.name);
  print(person.age);
}

class Person {
  String? name;
  int? age;

  Person(this.name, this.age);

  Person.fromjson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
  }

  Map<String, dynamic> tojson() {
    return {
      'name': name,
      'age': age,
    };
  }
}
