import 'package:flutter_application_1/model.dart';
import 'package:hive/hive.dart';

class Adapter extends TypeAdapter<Model> {
  @override

  // int get typeId => throw UnimplementedError();
  final int typeId = 0;

  @override
  Model read(BinaryReader reader) {
    // throw UnimplementedError();
    final name = reader.read() as String;
    final age = reader.read() as int;

    return Model(name: name, age: age);
  }

  @override
  void write(BinaryWriter writer, Model obj) {
    writer.write(obj.name);
    writer.write(obj.age);
  }
}
