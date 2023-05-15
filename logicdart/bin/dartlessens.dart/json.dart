import 'dart:convert';

void main(List<String> args) {
  String json = '{"name": "Syimyk", "age": 20}';
  Map<String, dynamic> map = jsonDecode(json);
  Person person = Person.fromjson(map);

  print(person.name);
  print(person.age);

  // var json = person.tojson();
  // jsonEncode(json);  // // send to server --> --> -->
}

class Person {
  String? name;
  int? age;

  Person(this.name, this.age);

// maalymatardy kabyl alysh uchun

  Person.fromjson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
  }

// jonotush uchun

  Map<String, dynamic> tojson() {
    return {
      'name': name,
      'age': age,
    };
  }
}
