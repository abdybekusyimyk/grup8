import 'package:hive/hive.dart';

class Model extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  int age;

  Model({required this.name, required this.age});
}
